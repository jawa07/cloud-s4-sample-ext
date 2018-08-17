# S/4HANA Cloud extensions - Collaborative Address Validation Using SAP Enterprise Eventing Services
This sample web application showcases an extension to an SAP S/4HANA Cloud system. It allows users to receive business events from S/4HANA Cloud in the SAP Cloud Platform. These events will be received whenever a Business Partner was changed in the S/4HANA Cloud System.

> **NOTE:** This sample app is based on and explained in detail in the Set-up instruction guide. There, you will find more details on the end to end steps of the business event handling scenario example, e.g.:
> * Connection setup of the SAP S/4HANA Cloud system and SAP Cloud Platform (via a communication arrangement)
> * Adaption and deployment of the sample app
> * Setup and configuration of the eventing service on SAP Cloud Platform (Cloud Foundry)
> * Instructions for an end-to-end test
>
> The following README only shows a basic overview.

Set-up Instructions Guide
-------------
https://help.sap.com/viewer/7dde0e0e3a294f01a6f7870731c5e4ad/SHIP/en-US

Requirements
-------------
1. We assume that you have access to an SAP S/4HANA Cloud system and an SAP Cloud Platform account
2. You need to subscribe to the Enterprise Messaging Service on SAP Cloud Platform (Cloud Foundry)
2. Install [JDK8](http://www.oracle.com/technetwork/java/javase/downloads/index.html), [Maven](http://maven.apache.org/download.cgi) and [Git](https://git-scm.com/downloads).
3. Prepare your S/4HANA Cloud system according to the Set-up instruction guide.

Connect it to your S/4HANA Cloud system
---------------------------------------

In this scenario, a side-by-side application receives business events and then reads related business object (i.e., Business Partner) from our S/4HANA system. For that purpose, we use standard, resource-based APIs of SAP S/4HANA.

To allow inbound communication to the SAP S/4HANA tenant, we need to create a communication arrangement first. The communication arrangement defines which system (communication system) and which user can call which APIs (communication scenarios). 
In this example, you create a communication arrangement and allow access to the standard Business Partner API (SAP_COM_0008) and Communication Scenario for Enterprise Messaging (SAP_COM_0092) using a technical user.

> **NOTE:** Please follow the steps described in the Set-up instruction guide to set up a communication system, communication arrangements and communication user in your S/4HANA tenant.


Limitations / Disclaimer
------------------------
Note: This sample code is primarily for illustration purposes and is not intended for productive usage. It solely shows basic interaction with an S/4HANA Cloud system. Topics like authentication, error handling, transactional correctness, security, caching, tests were omitted on purpose for the sake of simplicity. For detailed information on development on the SAP Cloud Platform, please consult https://www.sap.com/developer.html

Known Issues
------------
The service needs to be restarted every hour to make sure it is still listening to all incoming events.

[//]: # (TODO: Obtain support under which component? Is this "CA-GTF-FND" correct?)

How to obtain support
---------------------
File a message in the [SAP Support Launchpad](https://launchpad.support.sap.com/#/incident/create) under component `CA-GTF-FND`


### Copyright and License

Copyright (c) 2018 SAP SE or an SAP affiliate company. All rights reserved.
This file is licensed under the Apache Software License, v. 2 except as noted otherwise in the [LICENSE](LICENSE) file

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
