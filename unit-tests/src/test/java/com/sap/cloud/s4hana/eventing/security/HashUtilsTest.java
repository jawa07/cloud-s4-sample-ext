package com.sap.cloud.s4hana.eventing.security;

import static org.hamcrest.MatcherAssert.assertThat;

import java.io.Serializable;

import org.junit.Test;

public class HashUtilsTest {
	
	static class Testee implements Serializable {
		
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		
		public final String field = "Some final field value that will be the same for each Testee instance";
		
	}
	
	@Test
	public void testHash() {
		// given two objects which state is the same
		final Testee testee1 = new Testee();
		final Testee testee2 = new Testee();
		
		// when the hash() is called
		final String hash1 = HashUtils.hash(testee1);
		final String hash2 = HashUtils.hash(testee2);
		
		// then hashes are equal
		assertThat("Hashes of objects with the same state should be equal", hash1.equals(hash2));
	}
	
}
