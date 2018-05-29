package com.sap.cloud.s4hana.eventing.core.exceptions;

import org.springframework.cloud.cloudfoundry.com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.core.annotation.AnnotationUtils;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@ControllerAdvice
public class RestExceptionHandler extends ResponseEntityExceptionHandler {
 
    @ExceptionHandler(SAPODataException.class)
    protected ResponseEntity<ErrorMessage> handleODataException(SAPODataException exception, WebRequest request) throws JsonProcessingException {    
        return createErrorResponse(exception, getStatus(exception));
    }
    
    @ExceptionHandler(SAPSecurityException.class)
    protected ResponseEntity<ErrorMessage> handleSecurityException(SAPSecurityException exception, WebRequest request) throws JsonProcessingException {
        return createErrorResponse(exception, HttpStatus.UNAUTHORIZED);
    }

	private ResponseEntity<ErrorMessage> createErrorResponse(Exception exception, final HttpStatus httpStatus) {
        final ErrorMessage errorMessage = ErrorMessage.of(exception, httpStatus);
        return ResponseEntity.status(httpStatus).body(errorMessage);
	}
    
    private HttpStatus getStatus(Exception ex) {
        final ResponseStatus defaultResponseStatus = AnnotationUtils.findAnnotation(ex.getClass(), ResponseStatus.class);
        
        if (defaultResponseStatus == null) {
        	return HttpStatus.INTERNAL_SERVER_ERROR;
        }
        
		return defaultResponseStatus.code();
    }
}
