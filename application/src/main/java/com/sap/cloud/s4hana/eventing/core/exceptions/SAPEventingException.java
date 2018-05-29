package com.sap.cloud.s4hana.eventing.core.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Eventing Exception")
public class SAPEventingException extends RuntimeException {

    private static final long serialVersionUID = 1L;
    
    public SAPEventingException(String message) {
        super(message);
    }
    
    public SAPEventingException(Throwable throwable){
        super(throwable);
    }
    
    public SAPEventingException(String message, Throwable throwable){
        super(message,throwable);
    }

}
