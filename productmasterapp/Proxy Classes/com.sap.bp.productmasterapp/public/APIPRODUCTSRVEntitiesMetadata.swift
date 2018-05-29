// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

public class APIPRODUCTSRVEntitiesMetadata {
    public static var document: CSDLDocument = APIPRODUCTSRVEntitiesMetadata.resolve()

    private static func resolve() -> CSDLDocument {
        try! APIPRODUCTSRVEntitiesFactory.registerAll()
        APIPRODUCTSRVEntitiesMetadataParser.parsed.hasGeneratedProxies = true
        return APIPRODUCTSRVEntitiesMetadataParser.parsed
    }

    public class EntityTypes {
        public static var aProductDescriptionType: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductDescriptionType")

        public static var aProductPlantProcurementType: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductPlantProcurementType")

        public static var aProductPlantType: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductPlantType")

        public static var aProductSalesDeliveryType: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductSalesDeliveryType")

        public static var aProductSalesTaxType: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductSalesTaxType")

        public static var aProductStorageLocationType: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductStorageLocationType")

        public static var aProductSupplyPlanningType: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductSupplyPlanningType")

        public static var aProductType: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductType")

        public static var aProductWorkSchedulingType: EntityType = APIPRODUCTSRVEntitiesMetadataParser.parsed.entityType(withName: "API_PRODUCT_SRV.A_ProductWorkSchedulingType")
    }

    public class EntitySets {
        public static var aProduct: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_Product")

        public static var aProductDescription: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductDescription")

        public static var aProductPlant: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductPlant")

        public static var aProductPlantProcurement: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductPlantProcurement")

        public static var aProductSalesDelivery: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductSalesDelivery")

        public static var aProductSalesTax: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductSalesTax")

        public static var aProductStorageLocation: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductStorageLocation")

        public static var aProductSupplyPlanning: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductSupplyPlanning")

        public static var aProductWorkScheduling: EntitySet = APIPRODUCTSRVEntitiesMetadataParser.parsed.entitySet(withName: "A_ProductWorkScheduling")
    }
}
