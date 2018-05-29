package com.sap.cloud.s4hana.eventing.customer;

import static com.sap.cloud.s4hana.eventing.testutil.CloudFoundryEnvironmentMock.*;

import org.junit.ClassRule;
import org.junit.Test;

import com.sap.cloud.s4hana.eventing.core.constants.ConstantValues;
import com.sap.cloud.s4hana.eventing.security.CloudRSACipher;
import com.sap.cloud.s4hana.eventing.sendmail.SessionConfig;
import com.sap.cloud.sdk.cloudplatform.connectivity.Destination;
import com.sap.cloud.sdk.cloudplatform.connectivity.DestinationAccessor;
import com.sap.cloud.sdk.cloudplatform.connectivity.GenericDestination;
import com.sap.cloud.s4hana.eventing.testutil.CloudFoundryEnvironmentMock;

/**
 * Learning tests to check if {@link DestinationAccessor} can get destinations
 * mocked via environment variables via JUnit Rule
 * {@link CloudFoundryEnvironmentMock}
 *
 */
public class DestinationAccessorTest {

	@ClassRule
	public static CloudFoundryEnvironmentMock environmentMock = new CloudFoundryEnvironmentMock();
	
    /**
     * @see DestinationAccessor#getDestination(String)
     */
    @Test
    public void testGetDestination() {
    	final Destination destination = DestinationAccessor
    			.getDestination(ConstantValues.ERP_DESTINATION_NAME);
    	
    	assertDefaultErpDestination(destination);
    }
    
    /**
     * @see DestinationAccessor#getGenericDestination(String)
     */
    @Test
    public void testGetGenericDestinationWithMailDestination() {
    	final GenericDestination destination = DestinationAccessor
    			.getGenericDestination(SessionConfig.DESTINATION_NAME);
    	
    	assertDefaultMailDestination(destination);
    }
    
    /**
     * @see DestinationAccessor#getDestination(String)
     */
    @Test
    public void testGetRSAKeyPairStorageDestination() {
    	final GenericDestination destination = DestinationAccessor
    			.getGenericDestination(CloudRSACipher.DESTINATION_NAME);
    	
    	assertRSAKeyPairStorageDestination(destination);
    }
    
}
