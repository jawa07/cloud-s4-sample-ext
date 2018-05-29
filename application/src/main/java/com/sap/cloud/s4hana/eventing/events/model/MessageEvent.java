package com.sap.cloud.s4hana.eventing.events.model;

import java.util.Date;
import java.util.UUID;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.sap.cloud.s4hana.eventing.core.exceptions.SAPEventingException;
import com.sap.cloud.sdk.s4hana.datamodel.odata.namespaces.businesspartner.BusinessPartner;

public class MessageEvent {
    
    private static final String BUSINESS_PARTNER = "BUSINESSPARTNER";
    private static final String EVENT_PAYLOAD = "EVENT_PAYLOAD";
    private static final String KEY = "KEY";
    
    private final String uuid;
    private final String message;
    private final Date timestamp;

    public MessageEvent(byte[] content) {
        this(new String(content), new Date());
    }

    public MessageEvent(String content) {
        this(content, new Date());
    }

    private MessageEvent(String message, Date timestamp) {
        this.message = message;
        this.timestamp = timestamp;
        this.uuid = UUID.randomUUID().toString();
    }

    public String getMessage() {
        return message;
    }
  
    /**
	 * @return the key of {@link BusinessPartner} associated with the event
	 * @throws SAPEventingException
	 *             in case the event is malformed or doesn't contain the key of
	 *             a {@link BusinessPartner}
	 */
    public String getBusinessPartnerKey() throws SAPEventingException {
	    try {
			JSONObject event = new JSONObject(message);
			JSONObject eventPayload = event.getJSONObject(EVENT_PAYLOAD);
			JSONArray key = eventPayload.getJSONArray(KEY);
			return key.getJSONObject(0).getString(BUSINESS_PARTNER).trim();
		} catch (JSONException e) {
			throw new SAPEventingException("Exception when trying to get the BusinessPartnerKey from the Message Event", e);
		}
    }
    
    /**
	 * @return {@code true} if the current event is a {@link BusinessPartner}
	 *         event
	 */
    public boolean isBusinessPartnerEvent(){
        return message.contains(BUSINESS_PARTNER);
    }
}
