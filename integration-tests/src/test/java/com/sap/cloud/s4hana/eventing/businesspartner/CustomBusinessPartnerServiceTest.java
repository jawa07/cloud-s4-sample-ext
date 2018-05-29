package com.sap.cloud.s4hana.eventing.businesspartner;

import static org.junit.Assert.assertThat;
import static org.hamcrest.Matchers.*;

import java.util.List;
import java.util.UUID;

import org.junit.ClassRule;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sap.cloud.s4hana.eventing.businesspartner.model.AddrConfState;
import com.sap.cloud.s4hana.eventing.businesspartner.model.AddressDTO;
import com.sap.cloud.s4hana.eventing.businesspartner.model.CustomBusinessPartner;
import com.sap.cloud.s4hana.eventing.businesspartner.service.CustomBusinessPartnerService;
import com.sap.cloud.s4hana.eventing.core.exceptions.SAPODataException;
import com.sap.cloud.s4hana.eventing.testutil.CloudFoundryEnvironmentMock;
import com.sap.cloud.s4hana.eventing.testutil.EntitySupplier;
import com.sap.cloud.sdk.odatav2.connectivity.ODataException;
import com.sap.cloud.sdk.s4hana.datamodel.odata.namespaces.businesspartner.BPContactToFuncAndDept;
import com.sap.cloud.sdk.s4hana.datamodel.odata.namespaces.businesspartner.BusinessPartner;
import com.sap.cloud.sdk.s4hana.datamodel.odata.namespaces.businesspartner.BusinessPartnerAddress;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class CustomBusinessPartnerServiceTest {
    
    @ClassRule
    public static CloudFoundryEnvironmentMock environmentMock = new CloudFoundryEnvironmentMock();
    
    @Autowired
    public CustomBusinessPartnerService businessPartnerService;
    
    @Test
    public void testGetRootByKey() throws ODataException {
        BusinessPartner businessPartner = businessPartnerService.getRootByKey(EntitySupplier.EXISTING_BUSINESS_PARTNER_KEY);
        
        assertThat("BusinessPartnerKey", businessPartner.getBusinessPartner(), is(equalTo(EntitySupplier.EXISTING_BUSINESS_PARTNER_KEY)));
    }
    
    @Test 
    public void testGetByKey() {
        BusinessPartner businessPartner = businessPartnerService.getByKey(EntitySupplier.EXISTING_BUSINESS_PARTNER_KEY);
        
        assertThat("BusinessPartnerKey", businessPartner.getBusinessPartner(), is(equalTo(EntitySupplier.EXISTING_BUSINESS_PARTNER_KEY)));
    }
    
     
    public void testUpdateBusinessPartner() {
    	BusinessPartner businessPartner = businessPartnerService.getRootByKey(EntitySupplier.EXISTING_BUSINESS_PARTNER_KEY);
        
    	final String oldName = businessPartner.getOrganizationBPName2();
    	final String newName = "New name";
    	
		businessPartner.setOrganizationBPName2(newName);
		businessPartnerService.updateBusinessPartner(businessPartner);
    	BusinessPartner updatedBusinessPartner = businessPartnerService.getRootByKey(EntitySupplier.EXISTING_BUSINESS_PARTNER_KEY);
        assertThat("BusinessPartner's FullName", updatedBusinessPartner.getOrganizationBPName2(), is(newName));
        
        businessPartner.setBusinessPartnerFullName(oldName);
		businessPartnerService.updateBusinessPartner(businessPartner);
    }
    
    @Test(expected = SAPODataException.class)
    public void testGetByNoneExistingKey () {
        businessPartnerService.getByKey(EntitySupplier.NONEXISTENT_BUSINESS_PARTNER_KEY);
    }
    
    
    public void testSetAddrConfStateOnBusinessPartner() throws ODataException {
        CustomBusinessPartner businessPartner = businessPartnerService.getByKey(EntitySupplier.EXISTING_BUSINESS_PARTNER_KEY);
        AddrConfState originalState = businessPartner.getAddressConfirmationState();
        
        setAddrConfStateOnBusinessPartner(businessPartner.getBusinessPartner(), AddrConfState.CONFIRMED);
        businessPartner = businessPartnerService.getByKey(EntitySupplier.EXISTING_BUSINESS_PARTNER_KEY);
        assertThat("Address Confirmation State on BUPA", 
                businessPartner.getAddressConfirmationState(), is(AddrConfState.CONFIRMED));
        
        setAddrConfStateOnBusinessPartner(businessPartner.getBusinessPartner(), originalState);
        businessPartner = businessPartnerService.getByKey(EntitySupplier.EXISTING_BUSINESS_PARTNER_KEY);
        assertThat(originalState, is(businessPartner.getAddressConfirmationState()));
    }
    
    private void setAddrConfStateOnBusinessPartner(final String businessPartnerKey, final AddrConfState state) {
        final CustomBusinessPartner bp = businessPartnerService.getRootByKey(businessPartnerKey);
        bp.setAddressConfirmationState(state);
        businessPartnerService.updateBusinessPartner(bp);
    }
    
    @Test
    public void testSetAddressChecksumOnBusinessPartner() throws ODataException {
        CustomBusinessPartner businessPartner = businessPartnerService.getByKey(EntitySupplier.EXISTING_BUSINESS_PARTNER_KEY);
        String originalChecksum = businessPartner.getAddressChecksum();
        
        final String dummyChecksum = UUID.randomUUID().toString();
		setAddressChecksumOnBusinessPartner(businessPartner.getBusinessPartner(), dummyChecksum);
        businessPartner = businessPartnerService.getByKey(EntitySupplier.EXISTING_BUSINESS_PARTNER_KEY);
        assertThat("Address Checksum on BUPA", 
                businessPartner.getAddressChecksum(), is(dummyChecksum));
        
        setAddressChecksumOnBusinessPartner(businessPartner.getBusinessPartner(), originalChecksum);
        businessPartner = businessPartnerService.getByKey(EntitySupplier.EXISTING_BUSINESS_PARTNER_KEY);
        assertThat(originalChecksum, is(businessPartner.getAddressChecksum()));
    }
    
    private void setAddressChecksumOnBusinessPartner(final String businessPartnerKey, final String checksum) {
        final CustomBusinessPartner bp = businessPartnerService.getRootByKey(businessPartnerKey);
        bp.setAddressChecksum(checksum);
        businessPartnerService.updateBusinessPartner(bp);
    }
    
    @Test
    public void testGetBPContactToFuncAndDeptByBPCompanyKey() {
        List<BPContactToFuncAndDept> contacts = businessPartnerService.getBPContactToFuncAndDeptByBPCompanyKey(EntitySupplier.EXISTING_BUSINESS_PARTNER_KEY);

        assertThat(contacts.get(0), isA(BPContactToFuncAndDept.class));
        assertThat("contacts", contacts.get(0), hasProperty("businessPartnerCompany", is(equalTo(EntitySupplier.EXISTING_BUSINESS_PARTNER_KEY))));
    }
    
    @Test
    public void testGetBPContactToFuncAndDeptByNoneExistingBPCompanyKey() {
        List<BPContactToFuncAndDept> contacts = businessPartnerService.getBPContactToFuncAndDeptByBPCompanyKey(EntitySupplier.NONEXISTENT_BUSINESS_PARTNER_KEY);
        assertThat(contacts, is(empty()));
    }
    
    @Test
    public void testUpdateBusinessPartnerAddress() {
    	// Given an address that exists in S/4HANA ...
        BusinessPartnerAddress existingAddress = EntitySupplier.getExistingAddress();
        existingAddress = businessPartnerService.getAddressByKeys(existingAddress.getBusinessPartner(), existingAddress.getAddressID());

        // ... and a new city name
        final String newCityName = "City" + UUID.randomUUID(); 
        
        // ... and a corresponding Address DTO that contains new city name 
        AddressDTO changedAddressDTO = AddressDTO.of(existingAddress);
        changedAddressDTO.setCityName(newCityName);
        
        // When the address is updated using the updated DTO
        businessPartnerService.updateBusinessPartnerAddress(changedAddressDTO);
        
        // Then the updated address contains the new city name ...
        final BusinessPartnerAddress updatedAddress = businessPartnerService.getAddressByKeys(changedAddressDTO.getBusinessPartner(), changedAddressDTO.getAddressID());
        assertThat("The cityname of the updated address", updatedAddress.getCityName(), is(newCityName));
        
        // ... and all significant fields are the same
        assertThat("The DTO of the updated address should be the same as the original DTO", 
        		AddressDTO.of(updatedAddress), is(equalTo(changedAddressDTO)));

        // (Optional) Revert city name to the old one
        //businessPartnerService.updateBusinessPartnerAddress(existingAddress);
    }
    
}