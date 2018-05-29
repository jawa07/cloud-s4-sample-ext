package com.sap.cloud.s4hana.eventing.core.constants;

import com.sap.cloud.sdk.s4hana.connectivity.ErpDestination;

public class ConstantValues {

    /**
	 * The name of SAP Cloud Platform destination that is used to connect to the
	 * S/4HANA System.
	 * <p>
	 * The default value is {@link ErpDestination#getDefaultName()} which
	 * evaluates to {@code ErpQueryEndpoint} in SAP S/4HANA Cloud SDK v1.9.4
	 */
    public static final String ERP_DESTINATION_NAME = ErpDestination.getDefaultName();
    
}
