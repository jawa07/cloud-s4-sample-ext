package com.sap.cloud.s4hana.eventing.countries.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sap.cloud.s4hana.eventing.core.constants.ConstantValues;
import com.sap.cloud.s4hana.eventing.core.exceptions.SAPODataException;
import com.sap.cloud.sdk.odatav2.connectivity.ODataQueryBuilder;
import com.sap.cloud.sdk.s4hana.datamodel.odata.helper.VdmEntity;
import com.sap.cloud.sdk.s4hana.datamodel.odata.namespaces.country.CountryText;

@Service
public class CountryService {
	
	private static final Logger log = LoggerFactory.getLogger(CountryService.class);
	
	private static final String SERVICE_PATH = "/sap/opu/odata/sap/YY1_COUNTRIES_ISO_CDS";
	private static final String ENTITY_NAME = "YY1_COUNTRIES_ISO";
	
	/**
	 * @return the list of countries from S/4HANA via a Custom CDS View.
	 *         <p>
	 *         We reuse the existing {@link CountryText} Virtual Data Model
	 *         Entity from S/4HANA Cloud SDK here for the sake of simplicity.
	 *         <p>
	 *         In case there is no existing {@link VdmEntity} that can be reused
	 *         to query the Custom CDS View, consider using Virtual Data Model
	 *         Generator of SAP S/4HANA Cloud SDK.
	 * 
	 * @see <a href=
	 *      "https://blogs.sap.com/2018/03/29/sap-s4hana-cloud-sdk-version-1.9.4-is-available/#vdmGeneratorPreview">Announcement
	 *      of the preview release of Virtual Data Model (VDM) generator</a>
	 *
	 */
	public List<CountryText> getAll() throws SAPODataException {
		try {
			return ODataQueryBuilder.withEntity(SERVICE_PATH, ENTITY_NAME)
				.build()
				.execute(ConstantValues.ERP_DESTINATION_NAME)
				.asList(CountryText.class);
		} catch (Exception e) {
			final String message = "Error when getting the list of countries";
			log.error(message, e);
			throw new SAPODataException(message, e);
		}
	}

}
