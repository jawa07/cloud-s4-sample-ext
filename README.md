# SAP S/4HANA Cloud Extension with External Microservice - Address Validation Scenario 
 		  
This scenario showcases how to consume outbound HTTP services directly in restricted ABAP coding within SAP S/4HANA Cloud.
It shows how the SAP Data Quality Management microservice from SAP Cloud Platform can be used to check and correct address data stored on SAP S/4HANA Cloud.

The scenario is related to the [(Product Ordering sample app)](/https://github.com/SAP/cloud-s4-sample-ext/tree/extorderapp) where one-time customers order a product and submit their address details. This is where the address validation scenario here comes into the picture: once the address details are available in SAP S/4HANA Cloud, the data quality service is called, validates the address entered, and provides a response to SAP S/4HANA Cloud. 
The scenario basically covers 3 separate versions, or sub-scenarios respectively:     
1. (in-app scenario) addresses are validated from DQS, DQS responds whether quality level of address is high or low  
2. (in-app scenario) addresses are validated from DQS, DQS responds with the quality level and, in case of low, offers suggestions for the low quality/faulty address
3. (side-by-side scenario) a custom app running on SAP Cloud Platform is introduced where you can check and confirm the suggestions 

> **NOTE:** To implement this sample app in your own landscape, you need to do some preparation steps. These steps are outlined in the set-up instructions guide. There, you will find more details on the end to end steps, e.g.:
> * Setup of data quality service on SAP Cloud Platform
> * Creation of a custom business object in SAP S/4HANA Cloud
> * Connection setup of the SAP S/4HANA Cloud system and SAP Cloud Platform (via a communication arrangement)
> * Implementation of a UI5-based app

Set-up Instructions Guide
-------------
https://help.sap.com/viewer/63aaaca3eb4a41d0958ad433df0c0290/SHIP/en-US

Requirements
-------------
1. We assume that you have administrative access to an SAP S/4HANA Cloud system and an SAP Cloud Platform account.
2. You have the data quality service up and running in your SAP Cloud Platform account (it's in the Trial version available for 30 days; see [here](https://help.sap.com/viewer/d95546360fea44988eb614718ff7e959/Cloud/en-US) for more information on the service).
3. You have set up the landscape and done the prerequisite steps according to the set-up instructions guide.


Limitations / Disclaimer
------------------------
Note: This sample code is primarily for illustration purposes and is not intended for productive usage. It solely shows basic interaction with an S/4HANA Cloud system. Topics like authentication, error handling, transactional correctness, security, caching, tests were omitted on purpose for the sake of simplicity. For detailed information on development on the SAP Cloud Platform, please consult https://www.sap.com/developer.html


