package com.sap.cloud.s4hana.eventing.businesspartner.service;

import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Optional;

import org.apache.commons.lang.StringUtils;
import org.modelmapper.ModelMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sap.cloud.s4hana.eventing.businesspartner.model.AddressDTO;
import com.sap.cloud.s4hana.eventing.businesspartner.model.CustomBusinessPartner;
import com.sap.cloud.s4hana.eventing.core.constants.ConstantValues;
import com.sap.cloud.s4hana.eventing.core.exceptions.SAPODataException;
import com.sap.cloud.sdk.odatav2.connectivity.ODataException;
import com.sap.cloud.sdk.s4hana.connectivity.ErpConfigContext;
import com.sap.cloud.sdk.s4hana.datamodel.odata.namespaces.businesspartner.BPContactToFuncAndDept;
import com.sap.cloud.sdk.s4hana.datamodel.odata.namespaces.businesspartner.BusinessPartner;
import com.sap.cloud.sdk.s4hana.datamodel.odata.namespaces.businesspartner.BusinessPartnerAddress;
import com.sap.cloud.sdk.s4hana.datamodel.odata.services.BusinessPartnerService;
import com.sap.cloud.sdk.s4hana.serialization.SapClient;

@Service
public class CustomBusinessPartnerService {
	
	private static final Logger log = LoggerFactory.getLogger(CustomBusinessPartnerService.class);

    public static final String QUALITY_OFFICER = "0005";               //PersonFunction 0005 stands for "Quality Officer"
    public static final String QUALITY_ASSURANCE = "0007";             //PersonDepartment 0007 stands for "Quality Assurance"
    
    /**
     * Configuring a ErpConfigContext with all parameters will avoid unnecessary log messages from the SDK.
     * The used values are the default values for an S/4HANA Cloud setup
     */
    private static final ErpConfigContext erpConfigContext = new ErpConfigContext(ConstantValues.ERP_DESTINATION_NAME, new SapClient("100"), new Locale("en", "US"));
    
    private BusinessPartnerService businessPartnerService;
    
    @Autowired
    public CustomBusinessPartnerService(BusinessPartnerService businessPartnerService) {
        this.businessPartnerService = businessPartnerService;        
    }
    
    /*
     * Methods for BusinessPartner Root
     */
    
    /**
     * Fetches the Business Partner with the given {@code businessPartnerKey} from S/4HANA
     */
    public CustomBusinessPartner getByKey(String businessPartnerKey) throws SAPODataException {
        try {
            return CustomBusinessPartner.of(businessPartnerService
                    .getBusinessPartnerByKey(businessPartnerKey)
                    .select(BusinessPartner.BUSINESS_PARTNER, BusinessPartner.CUSTOMER, BusinessPartner.FIRST_NAME, BusinessPartner.LAST_NAME, BusinessPartner.BUSINESS_PARTNER_FULL_NAME)
                    .select(BusinessPartner.PERSON_NUMBER, BusinessPartner.TO_BUSINESS_PARTNER_ADDRESS, BusinessPartner.ACADEMIC_TITLE) 
                    .select(CustomBusinessPartner.ADDRESS_CHECKSUM, CustomBusinessPartner.ADDRESS_CONFIRMATION_STATE)
                    .execute(erpConfigContext));
        } catch (ODataException e) {
            throw error("There was an error while retrieving the BusinessPartner with the Key: " 
                        + businessPartnerKey, e);
        }
    }
    
    /**
	 * Fetches only the root information (simple properties) of the Business
	 * Partner with the given {@code businessPartnerKey} from S/4HANA.
	 * Navigation properties are not expanded.
	 * 
	 * @see <a href=
	 *      "http://www.odata.org/documentation/odata-version-2-0/terminology/">OData
	 *      Version 2.0 Documentation - Terminology</a>
	 */
    public CustomBusinessPartner getRootByKey(String businessPartnerKey) throws SAPODataException {
        try {
            return CustomBusinessPartner.of(businessPartnerService
                    .getBusinessPartnerByKey(businessPartnerKey)
                    .execute(erpConfigContext));
        } catch (ODataException e) {
            throw error("There was an error while retrieving the root of the BusinessPartner with the Key: " + businessPartnerKey, e);
        }
    }
    
    /**
     * Updates the given {@link BusinessPartner} in S/4HANA
     */
    public void updateBusinessPartner(BusinessPartner businessPartner) throws SAPODataException {
        try {
            businessPartnerService
                .updateBusinessPartner(businessPartner)
                .includingFields(CustomBusinessPartner.ADDRESS_CONFIRMATION_STATE,
                        CustomBusinessPartner.ADDRESS_CHECKSUM)
                .execute(erpConfigContext);
        } catch (ODataException e) {
           throw error("There was an error while updating the Business Partner " 
                       + businessPartner, e);
        }
    }
    
    /*
     * Methods for Business Partner associated objects
     */
    
    /**
     * Fetches all contacts of a company with the given key
     */
    public List<BPContactToFuncAndDept> getBPContactToFuncAndDeptByBPCompanyKey(String BPCompanyKey) throws SAPODataException {
        try {
            return businessPartnerService
                    .getAllBPContactToFuncAndDept()
                    .filter(BPContactToFuncAndDept.BUSINESS_PARTNER_COMPANY.eq(BPCompanyKey))
                    .execute(erpConfigContext);
        } catch (ODataException e) {
            throw error("There was an error while retrieving contacts of the Company with the Key: " + BPCompanyKey, e);
        }
    }
    
    /**
	 * @return the first {@link BusinessPartnerAddress} of the given
	 *         {@link BusinessPartner} or {@code null} if the Business Partner
	 *         has no address attached.
	 */
     public BusinessPartnerAddress getBupaAddress(BusinessPartner businessPartner) throws SAPODataException {
         List<BusinessPartnerAddress> address = Collections.emptyList();
         try {
             address = businessPartner.fetchBusinessPartnerAddress();
         } catch (ODataException cause ) {
             error("There was an error retrieving Business Partner Addresses from S4 HANA", cause);
         }
         if (!address.isEmpty()) {
             return address.get(0);
         } else {
             return null;
         }
     }
    
    /**
	 * Updates the Business Partner Address in S/4HANA
	 * 
	 * @param Data Transfer Object {@link AddressDTO} that contains address values
	 */
    public void updateBusinessPartnerAddress(AddressDTO addressDTO) {
        BusinessPartnerAddress address = new BusinessPartnerAddress();
        
        new ModelMapper().map(addressDTO, address);
        
        updateBusinessPartnerAddress(address);
        
    }

    /**
	 * Updates the Business Partner Address in S/4HANA
	 * 
	 * @param {@link BusinessPartnerAddress} to be updated
	 */
	public void updateBusinessPartnerAddress(BusinessPartnerAddress address) {
		try {
            businessPartnerService
                .updateBusinessPartnerAddress(address)
                .execute(erpConfigContext);
        } catch (ODataException e) {
            throw error("There was an error while updating the Business Partner Address: " + address, e);
        }
	}

    /**
     * Fetches the Business Partner Address with the given keys from S/4HANA
     * 
     * @return {@link BusinessPartnerAddress} with the given keys
     */
    public BusinessPartnerAddress getAddressByKeys(String businessPartner, String addressId) {
        try {
            return businessPartnerService
                    .getBusinessPartnerAddressByKey(businessPartner, addressId)
                    .execute(erpConfigContext);
        } catch (ODataException e) {
            throw error("There was an error while retrieving the address ("+ addressId + ") of the Business Partner (" + businessPartner + ")", e);
        }
    }
    
    /**
     * The Businesslogic that derives the Email address is this:
     * <ul>
     * <li>Return any contact that is both assigned to ‘Quality Officer’ [0005] function as well as to ‘Quality Assurance’ [0007] department, if any</li>
     * <li>Else return any contact that is assigned to ‘Quality Officer’ [0005] function, if any</li>
     * <li>Else choose any contact with an email address, if any</li>
     * <li>If no contact person is assigned - return empty {@link BPContactToFuncAndDept} object</li>
     * </ul>
     * 
     * @return responsible contact person {@link BPContactToFuncAndDept} of given {@code businessPartner}
     */
    public BPContactToFuncAndDept determineResponsibleContact(BusinessPartner businessPartner) {
        //Get list of all Contact persons of the Company 
        List<BPContactToFuncAndDept> allContacts = getBPContactToFuncAndDeptByBPCompanyKey(businessPartner.getCustomer());
        return getQualityOfficerFromQADept(allContacts)
                .orElse(getAnyQualityOfficer(allContacts)
                .orElse(getAnyoneWithEmail(allContacts)
                .orElse(getDummyContact())));
    }
    
    protected static Optional<BPContactToFuncAndDept> getQualityOfficerFromQADept(List<BPContactToFuncAndDept> contacts) {
        return contacts.stream()
                .filter(contact -> QUALITY_OFFICER.equals(contact.getContactPersonFunction()) &&
                        QUALITY_ASSURANCE.equals(contact.getContactPersonDepartment()) &&
                        StringUtils.isNotBlank(contact.getEmailAddress()))
                .findAny();              
    }
    
    protected static Optional<BPContactToFuncAndDept> getAnyQualityOfficer(List<BPContactToFuncAndDept> contacts) {
        return contacts.stream()
                .filter(contact -> QUALITY_OFFICER.equals(contact.getContactPersonFunction()) && 
                        StringUtils.isNotBlank(contact.getEmailAddress()))
                .findAny();              
    }
    
    protected static Optional<BPContactToFuncAndDept> getAnyoneWithEmail(List<BPContactToFuncAndDept> contacts) {
        return contacts.stream()
                .filter(contact -> StringUtils.isNotBlank(contact.getEmailAddress()))
                .findAny();              
    }
    
    protected static BPContactToFuncAndDept getDummyContact() {
        return new BPContactToFuncAndDept();
    }
    
    private static SAPODataException error(final String message, Exception cause) {
        if (cause == null) {
            log.error(message);
        } else {
            log.error(message, cause);
        }
        return new SAPODataException(message, cause);
    }
}
