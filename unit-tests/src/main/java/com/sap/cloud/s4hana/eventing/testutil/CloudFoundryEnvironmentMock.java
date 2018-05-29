package com.sap.cloud.s4hana.eventing.testutil;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;

import java.net.URI;
import java.util.Map;

import org.junit.ClassRule;
import org.junit.contrib.java.lang.system.EnvironmentVariables;
import org.junit.rules.ExternalResource;

import com.sap.cloud.s4hana.eventing.core.constants.ConstantValues;
import com.sap.cloud.s4hana.eventing.security.CloudRSACipher;
import com.sap.cloud.s4hana.eventing.sendmail.Email;
import com.sap.cloud.s4hana.eventing.sendmail.SessionConfig;
import com.sap.cloud.sdk.cloudplatform.connectivity.Destination;
import com.sap.cloud.sdk.cloudplatform.connectivity.DestinationType;
import com.sap.cloud.sdk.cloudplatform.connectivity.GenericDestination;
import com.sap.cloud.sdk.testutil.MockUtil;

/**
 * JUnit {@link ClassRule} that mocks CloudFoundry environment for local
 * testing.
 * <p>
 * If would be sufficient to use {@link MockUtil} to mock destinations, but
 * since it doesn't support mocking destinations of type
 * {@link DestinationType.MAIL} we use {@link EnvironmentVariables} class that
 * does so via system environment variable {@code destinations}.
 * 
 * @see MockUtil
 * @see EnvironmentVariables
 */
public class CloudFoundryEnvironmentMock extends ExternalResource {
	
	public class RSAKeyPairStorageDestination {
		// key size = 2048 bit
		public static final String PUBLIC_KEY = "-----BEGIN PUBLIC KEY----- MIIBITANBgkqhkiG9w0BAQEFAAOCAQ4AMIIBCQKCAQB2W3B960rwfgVVOPaGyfPN teUI9DNkoKuNz77f+4mYsvSHGdKYaFTeVDHyDcKEslVli36GBi0ZMqSZy+12MTcq j+4Xbe7/OhyTGPVHdptuOV8wpr9UDyJd3JUUfb93Z0SOgPi5HscPeKn+Mo8EhMNg Kj6ivDHDMefl9Iz3gBijAFWIPD+K6WUPtLZdl1dCtFTWhGNRNJPFEq2KyXJExxx2 75gnnLiAEOhz8/Hv1NlU66g914RN2kXbmCy5i3FQaiur7/ozZ800g6+0HjgR4609 auXtO9yQhmEbDStZcQT/rDx2de76gYmgngtGp15idNipiHQUQGjhXxPkiwxWo24t AgMBAAE= -----END PUBLIC KEY-----";
		public static final String PRIVATE_KEY = "-----BEGIN RSA PRIVATE KEY----- MIIEogIBAAKCAQB2W3B960rwfgVVOPaGyfPNteUI9DNkoKuNz77f+4mYsvSHGdKY aFTeVDHyDcKEslVli36GBi0ZMqSZy+12MTcqj+4Xbe7/OhyTGPVHdptuOV8wpr9U DyJd3JUUfb93Z0SOgPi5HscPeKn+Mo8EhMNgKj6ivDHDMefl9Iz3gBijAFWIPD+K 6WUPtLZdl1dCtFTWhGNRNJPFEq2KyXJExxx275gnnLiAEOhz8/Hv1NlU66g914RN 2kXbmCy5i3FQaiur7/ozZ800g6+0HjgR4609auXtO9yQhmEbDStZcQT/rDx2de76 gYmgngtGp15idNipiHQUQGjhXxPkiwxWo24tAgMBAAECggEAO7ZWQrD61eo+doiO l+I7hoVGUAYkB5in9JvjCM221bszcxWsEghRCPohWKVohdoTC3AdHTDwf831DUK9 QuwBkQ+cZ2WnNkzzLaNh2/QS5sE7LShzTs1z4TbwX64xcuQ+ykZ3Na45b6zI1t5b GUSB7Xpir2eTE4+SF4oRtKyDwXgwvLeYy4g4Me1TEeY2sSSd6P6HHvxPTOUEscT+ qTGam3J3eoBrnrdzYqa9bCO06Wzsch2cSA9oNCe720qgK2Nu7io3pGLlWAPjR1Me jg5uVwD2KedRr1wdX6TiAhvtZ+HmTWxUYLi4alMbGnpOJWC6JpS35nsZpKjKyC7F dnz9AQKBgQDEoNcD/RS4T5JtCMwcBWWZ32wa/LK1ww9Xz+MVTTCxEBwPOQ5mgQnM 7KI2sw1vjsn4Jz20ewEAmVBg01gDA78atWNOrSxepudiMCcbZZ04nSLhKdWMcSsP CAXdQ4tOahDCcVbrCrd49jCu/7p/rOad2culuNCamOrydMmwC6PcxQKBgQCaGFNp vMYXBhV87wQGuAxGiR27fyhgYhx4bRbr0N9q/ayNOq57YQ5GvyxRm0qYUD6hanPK 8sgMjkgrBDEcvT+FBvRv8stOYi5FYFymHBni5mdCL6ERE8p3lMbAEFayR/B5GJyt vQVFejXR29mp4F18eUcBzhC56A4uUAeeh08ySQKBgQC/pRRsqsr7KXNKGnz2AryY UQ8I7qswRUI7EEAAjw+aRF1U6QOEHNj0ht9D+RhrVvy7hWO6+PhtIQEanmL17Tzi R1DXaioIxxxWsyAqr8uhVmacly2wiMyzBdrRYffxIafcHKPeyr8wgqPIrS+VKWxN Be5bQ9ruE4VLc1Dw6Sd5EQKBgGbucuGBoIyGmtnuSrE2RbTkKIEzKkRfpQboT9RL nMG6G4XnOd/ecAvf7XnBkq11hLCMDDb3v5tre1eIoEnDPGfewm75Lsb4HFJpUNoA kWYYY8c5S4y9vJPuRGjNQSwrk71ALIB9b8T+Im9BPP8ViTz5Qe45uMCF+tsCyGQj nEpJAoGARC2AE4JviJ2ucJBMHTJHzFnIz9w3K/jmUl78rtUgLHC1yY8jTqUDDG/j /BekZdFLe0OfrUaoBtZSDP65tdE/6kyukWB0bPQgVUdSJE0VNAqnmuw1DsM1da9A WA4VGR0J86YL6UH9pIdLVwV4YFF8n0BnwBEgRLLTX1253QsOzo4= -----END RSA PRIVATE KEY-----";

		public static final String NOT_MATCHING_PUBLIC_KEY = "-----BEGIN PUBLIC KEY----- MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDMZDVGrYZR8goEugWCV1eQq7q0 pU/XKwyQSL8NAhA94lLnH7Gz2HkQ4mdV/7u1SAALmrzh67mbtGEU4kmp/VQBUKbK OYwvdITtOk7FLshx0LK+rg+JEnjeMo9hAW8rTW4/WUGHnn5/4S4M8N+xurEZJJQL iKz8BQBhrSSDsVHAwQIDAQAB -----END PUBLIC KEY-----";
	}
	
	public class DefaultMailDestination {
		public static final String USER = "noreply@example.com";
		public static final String PASSWORD = "12345";
		public static final String TRANSPORT_PROTOCOL = "smtps";
		public static final String SMTPS_HOST = "smtp.example.com";
		public static final String SMTPS_PORT = "465";
		public static final String SMTPS_AUTH = "true";
		public static final String FROM = "From Service <" + USER + ">";
	}
	
	public class DefaultErpDestination {
		public static final String URI = "https://my123456.s4hana.ondemand.com";
		public static final String USERNAME = "USER";
		public static final String PASSWORD = "PASSWORD";
	}
	
	private final EnvironmentVariables environmentVariables = new EnvironmentVariables();

	public EnvironmentVariables getEnvironmentVariables() {
		return environmentVariables; 
	}

	@Override
	protected void before() throws Throwable {	
		// Mocks default erp destination
		final String defaultErpDestination =
				String.format("{"
    				        + "name: \"%s\","
    				        + "url: \"%s\","
    				        + "type: \"HTTP\","
    				        + "username: \"%s\","
    				        + "password: \"%s\","
    				        + "properties: [{key: \"trustAll\", value: \"true\"}]"
				        + "}",
				ConstantValues.ERP_DESTINATION_NAME, 
				DefaultErpDestination.URI,
				DefaultErpDestination.USERNAME,
				DefaultErpDestination.PASSWORD);
		
		// Mocks destination that serves as a storage for RSA keys 
		final String rsaKeyPairStorageDestination =
				String.format("{"
						+ "name: \"%s\","
						+ "type: \"MAIL\", "
						+ "properties: "
							+ "["
								+ "{key: \"%s\", value: \"%s\"},"
								+ "{key: \"%s\", value: \"%s\"}"
							+ "]"
						+ "}",
				CloudRSACipher.DESTINATION_NAME, 
				CloudRSACipher.PRIVATE_KEY_PROPERTY, RSAKeyPairStorageDestination.PRIVATE_KEY,
				CloudRSACipher.PUBLIC_KEY_PROPERTY, RSAKeyPairStorageDestination.PUBLIC_KEY);
		
		// Mocks default mail destination
		final String defaultMailDestination =
				String.format("{"
				+ "name: \"%s\","
				+ "type: \"MAIL\", "
				+ "properties: "
					+ "["
						+ "{key: \"mail.user\", value: \"%s\"},"
						+ "{key: \"mail.password\", value: \"%s\"},"
						+ "{key: \"mail.transport.protocol\", value: \"%s\"},"
						+ "{key: \"mail.smtps.host\", value: \"%s\"},"
						+ "{key: \"mail.smtps.port\", value: \"%s\"},"
						+ "{key: \"mail.smtps.auth\", value: \"%s\"},"
						+ "{key: \"%s\", value: \"%s\"}"
					+ "]"
				+ "}",
				SessionConfig.DESTINATION_NAME, 
					DefaultMailDestination.USER, 
					DefaultMailDestination.PASSWORD,
					DefaultMailDestination.TRANSPORT_PROTOCOL,
					DefaultMailDestination.SMTPS_HOST,
					DefaultMailDestination.SMTPS_PORT,
					DefaultMailDestination.SMTPS_AUTH,
					Email.DESTINATION_PROPERTY_FROM, DefaultMailDestination.FROM);
		
		environmentVariables.set("destinations",
				String.format("[%s,%s,%s]",
					defaultMailDestination,
					rsaKeyPairStorageDestination,
					defaultErpDestination
				));
	}
	
	public static void assertDefaultErpDestination(Destination destination) {
    	assertThat("Erp destination", 
    			destination, 
    			is(not(nullValue())));
    	
		assertThat("Destination URI", 
				destination.getUri(), 
				is(URI.create(DefaultErpDestination.URI)));
    	assertThat("Destination Type", 
    			destination.getDestinationType(), 
    			is(DestinationType.HTTP));
	}
	
	public static void assertDefaultMailDestination(GenericDestination destination) {
		assertThat("Mail destination", 
    			destination, 
    			is(not(nullValue())));   
    	
    	assertThat("Destination Type", 
    			destination.getDestinationType(), 
    			is(DestinationType.MAIL));
    	
    	final Map<String, String> properties = destination.getPropertiesByName();
    	assertThat("mail.user property", 
    			properties.get("mail.user"), 
    			is(DefaultMailDestination.USER));
    	assertThat("mail.password property", 
    			properties.get("mail.password"), 
    			is(DefaultMailDestination.PASSWORD));
    	assertThat("transport.protocol property", 
    			properties.get("mail.transport.protocol"), 
    			is(DefaultMailDestination.TRANSPORT_PROTOCOL));
    	assertThat("mail.smtps.host property", 
    			properties.get("mail.smtps.host"), 
    			is(DefaultMailDestination.SMTPS_HOST));
    	assertThat("mail.smtps.port property", 
    			properties.get("mail.smtps.port"), 
    			is(DefaultMailDestination.SMTPS_PORT));
    	assertThat("mail.smtps.auth property", 
    			properties.get("mail.smtps.auth"), 
    			is(DefaultMailDestination.SMTPS_AUTH));
	}

	public static void assertRSAKeyPairStorageDestination(GenericDestination destination) {
		assertThat("RSAKeyPairStorageDestination", 
    			destination, 
    			is(not(nullValue())));   
    	
		final Map<String, String> properties = destination.getPropertiesByName();
	
		String privateKeyString = properties.get(CloudRSACipher.PRIVATE_KEY_PROPERTY);
		assertThat("Private key", 
				privateKeyString, 
				is(RSAKeyPairStorageDestination.PRIVATE_KEY));
		
		String publicKeyString = properties.get(CloudRSACipher.PUBLIC_KEY_PROPERTY);
		assertThat("Public key", 
				publicKeyString, 
				is(RSAKeyPairStorageDestination.PUBLIC_KEY));
	}

}
