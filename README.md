# S/4HANA Cloud extensions – iOS sample app

This sample iOS application showcases an extension to an SAP S/4HANA Cloud system. It lists down all the products in the S/4HANA Product Master API and clicking on any product displays data about the product.

> **NOTE:** This sample app is based on and explained in detail in the Mobile Extensibility set-up instructions guide. There, you will find more details on the end to end steps of the Reading the Product details from S/4HANA system and showing it on IOS application, e.g.:
> *    Connection setup of the SAP S/4HANA Cloud system and SAP Cloud Mobile Services Platform (via a communication arrangement and Destination)
> *    Adaption of the sample app

Prerequisites
-------------
1. We assume that you have access to an SAP S/4HANA Cloud system, SAP iOS SDK and an SAP Cloud Platform account
2. Install Xcode, configure SAP iOS SDK (see Mobile Extensibility guide for detailed steps).
3. Prepare your S/4HANA Cloud system according to the Mobile Extensibility set-up instructions guide.
4. This sample application reads data from the SAP S/4HANA Cloud backend system and hence requires appropriate data to be maintained there.

Development Environment on Mac Device
-------------
This sample app is based on the following tool versions:
1. Xcode version: **9.2 (9C40b)**
2. Programming language: **Swift 4**
3. SAP iOS SDK version: **2.1.003** (must be Xcode 9.2 compatible)

> **NOTE:**
> In case you are using another version of Xcode, then stated here, it is possible to download from Apple’s Developer website https://developer.apple.com/downloads/index.action?name=Xcode (Apple ID required) any version of the Xcode IDE. That downloaded version can be used parallel to your version.

Information about the generated Code parts of this Application
-------------
This sample is based on a generated application. More information about the structure of the generated application can be found on help.sap.com:
https://help.sap.com/viewer/fc1a59c210d848babfb3f758a6f55cb1/Latest/en-US/c14683672e9d4df383e8fced4ea9a019.html

Focal points of this sample app
-------------
* Extends the S/4HANA Cloud System with the aid of SAP Cloud Platform SDK for iOS
* Read-only application, which is fetching data from the S/4HANA Cloud System
* The standard Product Master API is used for the back-end
* Basic Authentification between S/4HANA Cloud System and the SAP Cloud Platform
* The app sends multiple queries to the back-end, and is able to access various entities of the Product Master API

Overview about the apps and system landscape Architecture
-------------
![Architecture](Architecture.png)

Limitations / Disclaimer
-------------

Note: This sample code is primarily for illustration purposes and is not intended for productive usage. It solely shows basic interaction with an S/4HANA Cloud system. Topics like authentication, error handling, transactional correctness, security, caching, tests were omitted on purpose for the sake of simplicity. For detailed information on development on the SAP Cloud Platform, please consult https://cloudplatform.sap.com/developers.html
