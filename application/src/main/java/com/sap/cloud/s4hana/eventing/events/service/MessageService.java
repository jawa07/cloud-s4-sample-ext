package com.sap.cloud.s4hana.eventing.events.service;

import com.google.common.annotations.VisibleForTesting;
import com.sap.cloud.servicesdk.xbem.api.Message;
import com.sap.cloud.servicesdk.xbem.api.MessagingEndpoint;
import com.sap.cloud.servicesdk.xbem.api.MessagingException;
import com.sap.cloud.servicesdk.xbem.api.MessagingService;
import com.sap.cloud.servicesdk.xbem.connector.sapcp.MessagingServiceInfoProperties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.Cloud;
import org.springframework.cloud.CloudFactory;
import org.springframework.cloud.service.ServiceConnectorConfig;
import org.springframework.stereotype.Service;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.stream.Stream;

/**
 * Service that will return all events that are incoming in the connected event-service instance 
 * (That Service instance needs to be defined in the {@code manifest.yml} under the {@code SAP_XBEM_BINDINGS} variable as input). <br>
 * All incoming events on a given binding will be returned as a {@link Stream}
 * of {@link Message} objects.
 */
@Service
public final class MessageService {
    
    @VisibleForTesting
    protected static final ConcurrentMap<String, MessagingEndpoint> BINDING_2_ENDPOINT = new ConcurrentHashMap<>();
    
    @Value("${eventing.queue}")
    protected String BINDING;
    
    private static final Logger log = LoggerFactory.getLogger(MessageService.class);
    
    @Autowired
    private MessageConsumer messageConsumer;
    
    /**
     * 
     * Opens the connection to the Messaging Service from Cloud Platform and
     * starts to receive messages as a {@link Stream}.
     * The Stream of Messages will be forwarded to a {@link MessageConsumer}.
     * 
     * @return
     * @throws MessagingException
     */
    public boolean initReceiver() throws MessagingException {
        MessagingEndpoint inQueue = grant(BINDING);
        if(!inQueue.isReceiving()) {
            inQueue.receive(messageConsumer);
        }
        return inQueue.isReceiving();
    }

    /**
     * 
     * Will return a MessagingEndpoint, which can be used to receive events from a Eventing-Service instance.
     * 
     * @param binding
     * @return
     * @throws MessagingException
     */
    @VisibleForTesting
    protected synchronized MessagingEndpoint grant(String binding) throws MessagingException {
        MessagingEndpoint endpoint = BINDING_2_ENDPOINT.get(binding);
        if(endpoint == null) {
            final Cloud cloud = new CloudFactory().getCloud();
            ServiceConnectorConfig config = MessagingServiceInfoProperties.init().finish();
            MessagingService messagingService = cloud.getSingletonServiceConnector(MessagingService.class, config);
            endpoint = messagingService.bind(binding).build();
            BINDING_2_ENDPOINT.put(binding, endpoint);
            log.info("Created endpoint and bound to {}", binding);
        } else if(endpoint.isClosed()) {
        // remove and re-connect
            BINDING_2_ENDPOINT.remove(binding);
            return grant(binding);
        }
        return endpoint;
    }
}
