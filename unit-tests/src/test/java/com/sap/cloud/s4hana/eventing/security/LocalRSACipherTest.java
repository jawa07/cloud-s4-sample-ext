package com.sap.cloud.s4hana.eventing.security;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import org.junit.Before;
import org.junit.ClassRule;
import org.junit.Test;

import com.sap.cloud.s4hana.eventing.testutil.CloudFoundryEnvironmentMock;

public class LocalRSACipherTest extends RSACipherImplTester {
	
	@ClassRule
	public static CloudFoundryEnvironmentMock environmentMock = new CloudFoundryEnvironmentMock();
	
	@Before
	public void setUp() throws NoSuchAlgorithmException, InvalidKeySpecException {
		cipher = new LocalRSACipher();
	}
	
	@Test
	public void testGetKeyPairFromDestination() throws NoSuchAlgorithmException, InvalidKeySpecException {
		assertKeyPair(LocalRSACipher.getKeyPairForLocalTesting(LocalRSACipher.ALGORITHM),
				LocalRSACipher.ALGORITHM);
	}
	
}
