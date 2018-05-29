package com.sap.cloud.s4hana.eventing.security;

import org.junit.Before;
import org.junit.ClassRule;
import org.junit.Test;

import com.sap.cloud.s4hana.eventing.testutil.CloudFoundryEnvironmentMock;

public class CloudRSACipherTest extends RSACipherImplTester {
	
	@ClassRule
	public static CloudFoundryEnvironmentMock environmentMock = new CloudFoundryEnvironmentMock();
	
	@Before
	public void setUp() {
		cipher = new CloudRSACipher();
	}
	
	@Test
	public void testGetKeyPairFromDestination() {
		assertKeyPair(CloudRSACipher.getKeyPairFromDestination(CloudRSACipher.DESTINATION_NAME, CloudRSACipher.ALGORITHM),
				CloudRSACipher.ALGORITHM);
	}
	
}
