package com.sap.cloud.s4hana.eventing.countries.service;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;

import java.util.List;

import org.junit.ClassRule;
import org.junit.Test;

import com.sap.cloud.s4hana.eventing.testutil.CloudFoundryEnvironmentMock;
import com.sap.cloud.sdk.s4hana.datamodel.odata.namespaces.country.CountryText;

public class CountryServiceTest {
	
	@ClassRule
    public static CloudFoundryEnvironmentMock environmentMock = new CloudFoundryEnvironmentMock();
	
	CountryService testee = new CountryService();
	
	@Test
	public void testGetAll() {
		final List<CountryText> countries = testee.getAll();
		assertThat("Germany's code", getCodeOfGermany(countries), is("DE"));
	}

	public String getCodeOfGermany(final List<CountryText> countries) {
		return countries.stream()
				.filter(country -> "Germany".equals(country.getCountryName()))
				.map(CountryText::getCountry)
				.findAny()
				.orElse(null);
	}

}
