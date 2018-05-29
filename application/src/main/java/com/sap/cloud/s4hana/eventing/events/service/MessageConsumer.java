package com.sap.cloud.s4hana.eventing.events.service;

import static com.sap.cloud.s4hana.eventing.businesspartner.model.AddrConfState.INITIAL;
import static com.sap.cloud.s4hana.eventing.businesspartner.model.AddrConfState.OPEN;

import java.util.function.Consumer;
import java.util.stream.Stream;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.google.common.annotations.VisibleForTesting;
import com.sap.cloud.s4hana.eventing.businesspartner.model.AddrConfState;
import com.sap.cloud.s4hana.eventing.businesspartner.model.AddressDTO;
import com.sap.cloud.s4hana.eventing.businesspartner.model.CustomBusinessPartner;
import com.sap.cloud.s4hana.eventing.businesspartner.service.CustomBusinessPartnerService;
import com.sap.cloud.s4hana.eventing.core.exceptions.SAPMailingException;
import com.sap.cloud.s4hana.eventing.events.model.MessageEvent;
import com.sap.cloud.s4hana.eventing.security.AddressConfirmationToken;
import com.sap.cloud.s4hana.eventing.security.HashUtils;
import com.sap.cloud.s4hana.eventing.security.RSACipher;
import com.sap.cloud.s4hana.eventing.sendmail.AddressChangeNotification;
import com.sap.cloud.s4hana.eventing.sendmail.AddressChangeNotificationService;
import com.sap.cloud.sdk.s4hana.datamodel.odata.namespaces.businesspartner.BPContactToFuncAndDept;
import com.sap.cloud.sdk.s4hana.datamodel.odata.namespaces.businesspartner.BusinessPartner;
import com.sap.cloud.sdk.s4hana.datamodel.odata.namespaces.businesspartner.BusinessPartnerAddress;
import com.sap.cloud.servicesdk.xbem.api.Message;

@Service
public class MessageConsumer implements Consumer<Stream<Message<byte[]>>> {
    
    private static final Logger log = LoggerFactory.getLogger(MessageConsumer.class);
    
    private final CustomBusinessPartnerService customBusinessPartnerService;
    private final AddressChangeNotificationService notificationService;
    private final RSACipher cipher;
    
    @VisibleForTesting
    protected String ADDRESS_CONFIRMATION_URL;
    
    @Autowired
    public MessageConsumer(CustomBusinessPartnerService customBusinessPartnerService, 
            AddressChangeNotificationService notificationService,
            RSACipher cipher,
            @Value("${address.confirmation.url}") String confirmationLink) {
        
        this.customBusinessPartnerService = customBusinessPartnerService;
        this.notificationService = notificationService;
        this.cipher = cipher;
        this.ADDRESS_CONFIRMATION_URL = confirmationLink;
    }

    @Override
    public void accept(Stream<Message<byte[]>> stream) {
        stream.peek((m) -> log.info("Message received..."))
        .map(Message::getContent).map(MessageEvent::new).forEach(this::handleEvent);
    }
    
    public void handleEvent(MessageEvent event) {
        log.debug("Event was Received. Full Event Message: {}", event.getMessage());
        try {
            // only Business Partner Events are relevant
            if (event.isBusinessPartnerEvent()) {
                
                // get Business Partner
                String businessPartnerKey = event.getBusinessPartnerKey();
                log.debug("Event for business partner with key {}" , businessPartnerKey);
                
                CustomBusinessPartner businessPartner = customBusinessPartnerService.getRootByKey(businessPartnerKey);
                
                if (StringUtils.isBlank(businessPartner.getCustomer()) || StringUtils.isNotBlank(businessPartner.getIsNaturalPerson())) {
                    log.debug("Business partner {} is no Customer or a Person. Therefore the event was dropped", businessPartner);
                    return;
                }
                
                // get address
                BusinessPartnerAddress address = customBusinessPartnerService.getBupaAddress(businessPartner);
                if (address == null) {
                    log.debug("No address assigned to business partner {}", businessPartnerKey);
                    businessPartner.setAddressChecksum("");
                    businessPartner.setAddressConfirmationState(INITIAL);
                    customBusinessPartnerService.updateBusinessPartner(businessPartner);
                    return;
                }
                
                // check if the address was changed
                final String oldAddressChecksum = businessPartner.getAddressChecksum();
                final String newAddressCheckSum = HashUtils.hash(AddressDTO.of(address));
                final boolean addressNotChanged = newAddressCheckSum.equals(oldAddressChecksum);
                
                final AddrConfState addressConfirmationState = businessPartner.getAddressConfirmationState();
                if (addressNotChanged && !INITIAL.equals(addressConfirmationState)) {
                    log.debug("Address in {} state was not changed for business partner {}",
                            addressConfirmationState.toString(),
                            businessPartnerKey);
                    return;
                }
                     
                // set confirmation state and address hash
                businessPartner.setAddressConfirmationState(INITIAL);
                businessPartner.setAddressChecksum(newAddressCheckSum);
                
                boolean emailWasSend = sendAddressConfirmationEmail(businessPartner, address);
                
                if (emailWasSend) {
                    // update address confirmation state
                    businessPartner.setAddressConfirmationState(OPEN);
                }
                
                // update the business partner
                customBusinessPartnerService.updateBusinessPartner(businessPartner);   
                
            } else {
                log.debug("Event is not a Business partner event. Full Event Message: {}", event.getMessage());
            }
        } catch (Exception e) {
            log.warn("There was an exception while handling an event. The event was dropped.", e);
        }
        
    }

    /**
     * Sends a confirmation email to the contact person of
     * {@code businessPartner}.
     * 
     * @return {@code true} if an email was send.<br>
     *         {@code false} if the Business Partner has no contact person or no
     *         valid email address can be found.
     */
    private boolean sendAddressConfirmationEmail(CustomBusinessPartner businessPartner, BusinessPartnerAddress address) {
        
        // get contact
        BPContactToFuncAndDept contact = customBusinessPartnerService.determineResponsibleContact(businessPartner);
        
        if (StringUtils.isBlank(contact.getEmailAddress())) {
            final String message = String.format(
                    "No valid email address found for business partner %s. Therefore no email was send",
                    businessPartner.getBusinessPartner());
            log.debug(message);
            return false;
        }
            
        // get contact person
        BusinessPartner contactPerson = customBusinessPartnerService.getByKey(contact.getBusinessPartnerPerson());
        
        // construct link
        final AddressConfirmationToken urlToken = AddressConfirmationToken.of(address);
        final String encryptedToken = new String(cipher.encrypt(urlToken));
        final String confirmationUrl = String.format(ADDRESS_CONFIRMATION_URL, encryptedToken);
        
        // construct notification
        final AddressChangeNotification notification = AddressChangeNotification.of(
                businessPartner, 
                AddressDTO.of(address),
                contactPerson, 
                contact.getEmailAddress(), 
                confirmationUrl);
        
        // send email
        try {
            notificationService.sendMail(notification);
            log.debug("Email was send to {}", contact.getEmailAddress());
            return true;
        } catch (SAPMailingException e) {
            log.debug("Error when sending email", e);
            return false;
        }
    }

}
