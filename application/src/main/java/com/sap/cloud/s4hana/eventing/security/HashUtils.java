package com.sap.cloud.s4hana.eventing.security;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import org.apache.commons.lang3.SerializationUtils;

import com.sap.cloud.s4hana.eventing.core.exceptions.SAPSecurityException;

public class HashUtils {
	
	public static final String ALGORITHM = "MD5";
	
	private HashUtils() {
		// prevents util class from being instantiated 
	}

	public static String hash(Serializable object) throws SAPSecurityException {
		final byte[] hashBytes = getHasher().digest(SerializationUtils.serialize(object));
		
		return Base64.getUrlEncoder().encodeToString(hashBytes);
	}

	protected static MessageDigest getHasher() throws SAPSecurityException {
		try {
			return MessageDigest.getInstance(ALGORITHM);
		} catch (NoSuchAlgorithmException e) {
			throw new SAPSecurityException("No provider found that supports the " + ALGORITHM + " altorithm", e);
		}
	}

}
