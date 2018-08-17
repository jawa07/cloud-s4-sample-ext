# S/4HANA Cloud extensions - Set Up Authentication for SAP S/4HANA Cloud Extensions

This scenario showcases how you can configure the connectivity from your SAP Cloud Platform (Neo) account to your SAP S/4HANA Cloud tenant when setting up side-by-side extensibility applications.

Simple Java and SAPUI5 applications are used as an example that you can implement in your own landscape to check how you can use these different authentication types.

> **NOTE:** To implement this scenario, refer to the [Set-up Instructions Guide](https://help.sap.com/viewer/8ce29283d61a4bca96e9e7d87c95baa3). There, you will find more details on the end to end steps.

Set-up Instructions Guide
-------------
https://help.sap.com/viewer/8ce29283d61a4bca96e9e7d87c95baa3

Requirements
-------------
1. We assume that you have access to an SAP S/4HANA Cloud system and an SAP Cloud Platform account
2. Install [JDK8](http://www.oracle.com/technetwork/java/javase/downloads/index.html), [Maven](http://maven.apache.org/download.cgi) and [Git](https://git-scm.com/downloads).
3. Prepare your S/4HANA Cloud system according to the [Set-up Instructions Guide](https://help.sap.com/viewer/8ce29283d61a4bca96e9e7d87c95baa3).

> **NOTE:** To implement the steps on Client Certificate Authentication, you need to have a client certificate signed by a trusted certificate authority (CA).


Troubleshooting
------------

If you work with your [SAP Cloud Platform Trial account](https://account.hanatrial.ondemand.com/), you must add the following 2 properties to the destination so that the connection to SAP S/4HANA Cloud works:

      proxyHost =	proxy-trial.od.sap.biz
      proxyPort =	8080


Limitations / Disclaimer
------------------------
Note: This sample code is primarily for illustration purposes and is not intended for productive usage. It solely shows basic interaction with an S/4HANA Cloud system. Topics like authentication, error handling, transactional correctness, security, caching, tests were omitted on purpose for the sake of simplicity. For detailed information on development on the SAP Cloud Platform, please consult https://www.sap.com/developer.html

How to obtain support
---------------------
File a message in the [SAP Support Launchpad](https://launchpad.support.sap.com/#/incident/create) under component `CA-GTF-FND-EXT`


Copyright and License
---------------------
Copyright (c) 2017 SAP SE or an SAP affiliate company. All rights reserved.
This file is licensed under the Apache Software License, v. 2 except as noted otherwise in the [LICENSE](LICENSE) file

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
