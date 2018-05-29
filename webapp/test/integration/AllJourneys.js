jQuery.sap.require("sap.ui.qunit.qunit-css");
jQuery.sap.require("sap.ui.thirdparty.qunit");
jQuery.sap.require("sap.ui.qunit.qunit-junit");
QUnit.config.autostart = false;

sap.ui.require([
		"sap/ui/test/Opa5",
		"prodrisk/test/integration/pages/Common",
		"sap/ui/test/opaQunit",
		"prodrisk/test/integration/pages/Worklist",
		"prodrisk/test/integration/pages/Object",
		"prodrisk/test/integration/pages/NotFound",
		"prodrisk/test/integration/pages/Browser",
		"prodrisk/test/integration/pages/App"
	], function (Opa5, Common) {
	"use strict";
	Opa5.extendConfig({
		arrangements: new Common(),
		viewNamespace: "prodrisk.view."
	});

	sap.ui.require([
		"prodrisk/test/integration/WorklistJourney",
		"prodrisk/test/integration/ObjectJourney",
		"prodrisk/test/integration/NavigationJourney",
		"prodrisk/test/integration/NotFoundJourney",
		"prodrisk/test/integration/FLPIntegrationJourney"
	], function () {
		QUnit.start();
	});
});