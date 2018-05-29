package com.sap.cloud.s4hana.eventing.core.exceptions;

import org.springframework.http.HttpStatus;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Generic model to be used as a HTTP response body for REST API error responses
 *
 */
public class ErrorMessage {
    
    @JsonProperty("status")
    private Integer httpStatusCode;
    
    @JsonProperty("error")
    private String httpStatus;
    
    @JsonProperty("message")
    private String message;
    
    @JsonProperty("detailMessage")
    private String detailMessage;
    
    public static ErrorMessage of(Throwable t, HttpStatus httpStatus) {
    	String detailMessage = null;
    	if (t.getCause() != null) {
    		detailMessage = t.getCause().getMessage();
    	}
    	
        return new ErrorMessage(t.getMessage(), detailMessage, httpStatus);
    }
    
    public static ErrorMessage of(String message, String detailMessage, HttpStatus httpStatus) {
        return new ErrorMessage(message, detailMessage, httpStatus);
    }
    
    protected ErrorMessage(String message, String detailMessage, HttpStatus httpStatus) {
        super();
        this.setHttpStatus(httpStatus);
        this.message = message;
        this.detailMessage = detailMessage;
    }

    public String getMessage() {
        return message;
    }

    public String getDetailMessage() {
        return detailMessage;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setDetailMessage(String detailMessage) {
        this.detailMessage = detailMessage;
    }

    public Integer getHttpStatusCode() {
        return httpStatusCode;
    }

    public void setHttpStatusCode(Integer httpStatusCode) {
        this.httpStatusCode = httpStatusCode;
    }
    
    public void setHttpStatus(HttpStatus httpStatus) {
    	if (httpStatus == null) {
    		this.httpStatusCode = null;
    		this.httpStatus = null;
    	} else {
    		this.httpStatusCode = httpStatus.value();
    		this.httpStatus = httpStatus.name();
    	}
    }

    public String getHttpError() {
        return httpStatus;
    }

    public void setHttpError(String httpError) {
        this.httpStatus = httpError;
    }
}
