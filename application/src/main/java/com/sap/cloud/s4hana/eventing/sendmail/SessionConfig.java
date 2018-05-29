package com.sap.cloud.s4hana.eventing.sendmail;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.sap.cloud.s4hana.eventing.core.exceptions.SAPMailingException;
import com.sap.cloud.sdk.cloudplatform.connectivity.DestinationAccessor;
import com.sap.cloud.sdk.cloudplatform.connectivity.DestinationType;
import com.sap.cloud.sdk.cloudplatform.connectivity.GenericDestination;
import com.sap.cloud.sdk.cloudplatform.connectivity.exception.DestinationAccessException;
import com.sap.cloud.sdk.cloudplatform.connectivity.exception.DestinationNotFoundException;

/**
 * Creates JavaMail {@link Session} using configuration stored in MAIL
 * destination on CloudFoundry
 */
@Configuration
public class SessionConfig {
	
	private static final Logger log = LoggerFactory.getLogger(SessionConfig.class);
	
	private static final String PROPERTY_MAIL_PASSWORD = "mail.password";
	private static final String PROPERTY_MAIL_USER = "mail.user";
	
	/**
	 * The name of default SAP Cloud Platform destination of type {@code MAIL}.
	 * <p>
	 * The default value is {@code MailSession}.
	 */
	public static final String DESTINATION_NAME = "MailSession";

	/**
	 * @return {@link Session} constructed from destination with default name
	 *         {@link MAIL_DESTINATION_NAME}
	 * @throws SAPMailingException
	 *             when destination is not found or cannot be accessed
	 * @see Session
	 * @see SessionConfig#getMailDestination(String)
	 * @see SessionConfig#DESTINATION_NAME
	 */
	@Bean
	public static Session getDefaultSession() throws SAPMailingException {
		return getSession(DESTINATION_NAME);
	}

	/**
	 * @param destinationName
	 *            the name of a mail destination on SAP Cloud Platform
	 * @return {@link Session} constructed from destination with specified
	 *         {@code name}
	 * @throws SAPMailingException
	 *             when destination is not found or cannot be accessed
	 * @see Session
	 * @see SessionConfig#getMailDestination(String)
	 */    
	public static Session getSession(final String destinationName) throws SAPMailingException {
		
		// replace with getGenericDestination() when CF doesn't work
		// final GenericDestination mailDestination = getGenericDestination(DESTINATION_NAME);
		final GenericDestination mailDestination = getMailDestination(destinationName);
		
		Properties properties = new Properties(); 
		properties.putAll(mailDestination.getPropertiesByName());
		
		final Authenticator authenticator = new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				final String username = properties.getProperty(PROPERTY_MAIL_USER);
				final String password = properties.getProperty(PROPERTY_MAIL_PASSWORD);
				return new PasswordAuthentication(username, password);
			}
			
		};
		
		return Session.getInstance(properties, authenticator);
	}

	/**
	 * @param name
	 *            the name of a mail destination on SAP Cloud Platform
	 * @return SAP Cloud Platform mail destination by its name
	 * @throws SAPMailingException
	 *             when destination is not found, cannot be accessed or not of
	 *             type {@link DestinationType.MAIL}
	 * @see SessionConfig#DESTINATION_NAME
	 */
	public static GenericDestination getMailDestination(final String name) throws SAPMailingException {
		final GenericDestination mailDestination = getGenericDestination(name);
    	
    	if (mailDestination.getDestinationType() != DestinationType.MAIL) {
			throw error("Destination " + name + " is not of type MAIL.", null);
		}
    	
		return mailDestination;
    }

	/**
	 * @param name
	 *            the name of a destination on SAP Cloud Platform
	 * @return SAP Cloud Platform destination by its name
	 * @throws SAPMailingException
	 *             when destination is not found or cannot be accessed
	 * @see SessionConfig#DESTINATION_NAME
	 */
	public static GenericDestination getGenericDestination(final String name) throws SAPMailingException {
		try {
			return DestinationAccessor.getGenericDestination(name);
		} catch (DestinationNotFoundException e) {
			throw error("Destination " + name + " is not found on SAP Cloud Platform", e);
		} catch (DestinationAccessException e) {
			throw error("Destination " + name + " cannot be accessed. "
					+ "Possible reasons can be: trying to access a destination with a wrong destination type "
					+ "or mandatory properties are not set.", e);
		}
	}
	
	/**
	 * Logs the error with ERROR log level and wraps it in
	 * {@link SAPMailingException}
	 * 
	 * @param message
	 *            message for the log event and to be used as message for
	 *            {@link SAPMailingException}
	 * @param cause
	 *            cause exception
	 * @return SAPMailingException with message {@code message} and cause
	 *         {@code cause}
	 */	
	private static SAPMailingException error(final String message, Exception cause) {
		if (cause == null) {
			log.error(message);
		} else {
			log.error(message, cause);
		}
		
		return new SAPMailingException(message, cause);
	}
    
}