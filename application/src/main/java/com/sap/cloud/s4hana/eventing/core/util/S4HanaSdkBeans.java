package com.sap.cloud.s4hana.eventing.core.util;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.sap.cloud.sdk.s4hana.datamodel.odata.services.BusinessPartnerService;
import com.sap.cloud.sdk.s4hana.datamodel.odata.services.DefaultBusinessPartnerService;

@Configuration
public class S4HanaSdkBeans {

    @Bean
    BusinessPartnerService getBusinessPartnerService() {
        return new DefaultBusinessPartnerService();
    }
}
