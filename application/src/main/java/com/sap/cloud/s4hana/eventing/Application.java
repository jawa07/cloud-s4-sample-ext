package com.sap.cloud.s4hana.eventing;

import org.springframework.beans.BeansException;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;

import com.sap.cloud.s4hana.eventing.events.service.MessageService;
import com.sap.cloud.servicesdk.xbem.api.MessagingException;

@SpringBootApplication
@ComponentScan({"com.sap.cloud.sdk.s4hana.datamodel.odata.services", "com.sap.cloud.s4hana.eventing"})
@ServletComponentScan({"com.sap.cloud.sdk.s4hana.datamodel.odata.services", "com.sap.cloud.s4hana.eventing"})
public class Application extends SpringBootServletInitializer {
    
    @Override
    protected SpringApplicationBuilder configure( final SpringApplicationBuilder application ) {
        return application.sources(Application.class);
    }

    public static void main( final String[] args ) throws BeansException, MessagingException {
        ConfigurableApplicationContext context = SpringApplication.run(Application.class, args);
        context.getBean(MessageService.class).initReceiver();
    } 
    
}
