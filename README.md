# S/4HANA Cloud extensions - Business Event Handling sample app
This sample web application showcases an extension to an SAP S/4HANA Cloud system. It allows users to display the business event objects in the business event queue of S/4HANA Cloud together with the corresponding sales order object.

> **NOTE:** This sample app is based on and explained in detail in the Set-up instruction guide. There, you will find more details on the end to end steps of the business event handling scenario example, e.g.:
> * Connection setup of the SAP S/4HANA Cloud system and SAP Cloud Platform (via a communication arrangement)
> * Adaption and deployment of the sample app
>
> The following README only shows a basic overview.

Requirements
-------------
1. We assume that you have access to an SAP S/4HANA Cloud system and an SAP Cloud Platform account
2. Install [JDK8](http://www.oracle.com/technetwork/java/javase/downloads/index.html), [Maven](http://maven.apache.org/download.cgi) and [Git](https://git-scm.com/downloads).
3. Prepare your S/4HANA Cloud system according to the Set-up instruction guide.

Connect it to your S/4HANA Cloud system
---------------------------------------

In this scenario, a side-by-side application reads business event data and their related business object (i.e., Sales Order) from our S/4HANA system. For that purpose, we use standard, resource-based APIs of SAP S/4HANA.

To allow inbound communication to the SAP S/4HANA tenant, we need to create a communication arrangement first. The communication arrangement defines which system (communication system) and which user can call which APIs (communication scenarios). 
In this example, you create a communication arrangement and allow access to the standard Business Event Queue API (SAP_COM_0121) and Process Sales Order API (SAP_COM_0109) using a technical user.

> **NOTE:** Please follow the steps described in the Set-up instruction guide to set up a communication system, communication arrangements and communication user in your S/4HANA tenant.

Download the sample app
------------------

```
git clone https://github.com/SAP/cloud-s4-sample-ext.git
cd cloud-s4-sample-ext
git checkout businesseventapp
```
Or if you want to clone the single branch only: 
```
git clone -b businesseventapp --single-branch git://github.com/SAP/cloud-s4-sample-ext.git
cd cloud-s4-sample-ext
```

Build it
--------

```
mvn clean package
```


Deploy to SAP Cloud Platform
----------------------------
1.	Log on to your SAP Cloud Platform cockpit.
2.	Go to Java Applications. Choose Deploy Application. 
3.	Choose Browse to locate the WAR file you have created.
4.	Enter an application name.
5.	Select Java Web Tomcat 8 from the Runtime Name. 
6.	Now, the remaining parts of the configuration are automatically filled in correctly.
7.	Choose Deploy. 
8.	Choose Done.

> **NOTE:** Before you can start the application, you need to create a destination first. Refer to the next section.

Create a Destination
----------------------------
Destinations are used for the outbound communication of your application to a remote system (which is, in this case, the SAP S/4HANA Cloud system). To create a destination, you enter a name, the URL of the SAP S/4HANA Cloud system, the authentication type, and some other configuration data.	Maintain the properties as follows:

Property | Value
------------ | -------------
Name | ErpQueryEndpoint
Type | http
Description | <e.g. the name of your communication arrangement>
URL | <the base URL to your S/4HANA Cloud system; note the “-api”; e.g. https://myXXXXXX-api.s4hana.ondemand.com>
Proxy type | Internet
Authentication | BasicAuthentication
User | <the user you created; e.g. BEHSAMPLEAPP_API_USER>
Password | \<the password you created\>


> **NOTE:** The name of the destination should be exactly “ErpQueryEndpoint”.
> The user and password depend on the communication system and user that have been created in your SAP S/4HANA Cloud system.
> The URL depends on the communication arrangement created in your SAP S/4HANA Cloud system.

Limitations / Disclaimer
------------------------
Note: This sample code is primarily for illustration purposes and is not intended for productive usage. It solely shows basic interaction with an S/4HANA Cloud system. Topics like authentication, error handling, transactional correctness, security, caching, tests were omitted on purpose for the sake of simplicity. For detailed information on development on the SAP Cloud Platform, please consult https://cloudplatform.sap.com/developers.html

[//]: # (TODO: Do we want to write something on the section "Known Issues")

[//]: # (TODO: Obtain support under which component? Is this "CA-GTF-FND" correct?)

How to obtain support
---------------------
File a message in the [SAP Support Launchpad](https://launchpad.support.sap.com/#/incident/create) under component `CA-GTF-FND`

### Copyright and License

Copyright (c) 2018 SAP SE or an SAP affiliate company. All rights reserved.
This file is licensed under the Apache Software License, v. 2 except as noted otherwise in the [LICENSE](LICENSE) file

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
