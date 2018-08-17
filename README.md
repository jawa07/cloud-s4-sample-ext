# S/4HANA Cloud extensions - Migrated Sales Order Data
This scenario showcases a simple sales order UI app that displays historical data of sales orders and other documents that have been migrated from a legacy system to another database system. This app allows you to perform search, filter, and sort operations on the data. Additionally, you can export the data to a Microsoft Excel file. A user with the admin role can also import historical sales order data using the import functionality.

> **NOTE:** This sample app is based on and explained in detail in the [Set-up instruction guide](https://help.sap.com/viewer/1eeef7f3c5c140b1a3b406cf357f316a). There, you will find more details on the end to end steps of the scenario, e.g.:
> * Creation and binding of service instances
> * Security setup (Single Sign-On authentication configuration, authorizations assignment)
> * Adaption and deployment of the sample app
> * Integration of the custom app on the SAP Fiori Launchpad for SAP S/4HANA Cloud
> * Testing the extension scenario
>
> The following README only shows a basic overview.

## Preparation

The following steps are common for both SAP Cloud Platform Neo and SAP Cloud Platform Cloud Foundry.

### Download the sample app

```
git clone https://github.com/SAP/cloud-s4-sample-ext.git
cd cloud-s4-sample-ext
git checkout migratehistoricaldata
```
or if you want to clone the single branch only:
```
git clone -b migratehistoricaldata --single-branch git://github.com/SAP/cloud-s4-sample-ext.git
cd cloud-s4-sample-ext
```

### Adapt the application to your database

Set the value of `eclipselink.target-database` property in the [/core/src/main/resources/META-INF/persistence.xml](/core/src/main/resources/META-INF/persistence.xml#L31) file according to your database. Supported values are: `HANA` for SAP HANA, `Sybase` for SAP ASE, `PostgreSQL` for PostgreSQL and `Auto` for HSQLDB – the database embedded in the Cloud Foundry TomEE runtime (only for testing purposes and only if you have no other database available).

Additionally, if you are going to deploy the application on SAP Cloud Platform Cloud Foundry:
1. In case you are using HSQLDB, delete the [/app-cf/src/main/resources/META-INF/resources.xml](/app-cf/src/main/resources/META-INF/resources.xml) file.
2. In case of all other databases, replace the `<database-service-instance>` placeholder in the [/app-cf/src/main/resources/META-INF/resources.xml](/app-cf/src/main/resources/META-INF/resources.xml#L6) file with the name of your database service instance.

### Build the application

Execute the following command from the folder in which you downloaded the application:
```
mvn clean package -Dmaven.test.skip=true
```
> **NOTE:** The commands may differ slightly depending on your operating system or the version of Apache Maven.

## Deploy the application on SAP Cloud Platform Neo

1. Deploy the freshly built `app-neo/target/migratehistoricaldata-app-neo.war` file containing the back-end application to your SAP Cloud Platform Neo subaccount as a Java application using the `Java EE 7 Web Profile TomEE 7` runtime.
2. Using SAP Cloud Platform cockpit, assign the `Admin` and `Viewer` application security roles to respective users of your newly deployed Java back-end application.
3. Create a database and bind it to the back-end application.
4. Start the back-end application and note down its application URL.
5. Create an HTTP destination to the back-end application using its application URL with `AppToAppSSO` authentication to enable front-end application to communicate with the back-end. Make sure that the principal propagation is enabled for the Local Identity Provider of your subaccount.
6. Import the freshly built `ui/target/migratehistoricaldata-ui-neo.zip` file containig the front-end application to your subaccount as an HTML5 application and activate the imported version.

## Deploy the application on SAP Cloud Platform Cloud Foundry
1. In your SAP Cloud Platform Cloud Foundry space, create the instances of the following services
   - Authorization & Trust Management (xsuaa). Use [app-cf/xs-security.json](app-cf/xs-security.json) to import service parameters when prompted.
   - Application Logging (application-logs).
   - Audit Logger (auditlog-api). The service is optional.
   - Database service of your choice (hanatrial, hana or PostgreSQL). The service is optional: if no instance is created, the application will use the embedded HSQLDB database. If you create a service instance, make sure that the instance's name is the same as you specified in the [/app-cf/src/main/resources/META-INF/resources.xml](/app-cf/src/main/resources/META-INF/resources.xml) file.
2. Replace the placeholders in the [/app-cf/manifest.yml](/app-cf/manifest.yml) manifest file with the names of the service instances that you created in the previous step and unique host names for your microservices. Additionally, if you are using HANA database, do the same for the [app-cf/db/manifest.yml](app-cf/db/manifest.yml) file.
3. Using Node.js Package Manager's (NPM) `npm install` command, download the dependencies of the [/app-cf/approuter](/app-cf/approuter) application. If you are using SAP HANA database, do the same for the [/app-cf/db](/app-cf/db) application.
4. If you are using SAP HANA database, deploy the [/app-cf/db](/app-cf/db) application using Cloud Foundry command line client (CLI):
   ```
   cf api <the-API-endpoint-of-your-subaccount>
   cf login
   cf push
   ```
5. Run the commands from Step 4 from the [/app-cf](/app-cf/) folder to deploy and start the application router, back-end and front-end applications.
6. Create Role Collections that contain the `Viewer` and `Admin` roles of your Authorization & Trust Management (xsuaa) service instance and assign these collections to respective application users in your subaccount.


Limitations / Disclaimer
------------------------
Note: This sample code is primarily for illustration purposes and is not intended for productive usage. It solely shows basic interaction with an S/4HANA Cloud system. Topics like authentication, error handling, transactional correctness, security, caching, tests were omitted on purpose for the sake of simplicity. For detailed information on development on the SAP Cloud Platform, please consult https://www.sap.com/developer.html

How to obtain support
---------------------
File a message in the [SAP Support Launchpad](https://launchpad.support.sap.com/#/incident/create) under component `CA-GTF-FND-EXT`


Copyright and License
---------------------
Copyright (c) 2018 SAP SE or an SAP affiliate company. All rights reserved.
This file is licensed under the Apache Software License, v. 2 except as noted otherwise in the [LICENSE](LICENSE) file

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

