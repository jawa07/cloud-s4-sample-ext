// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

internal class APIPRODUCTSRVEntitiesFactory {
    static func registerAll() throws {
        APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.registerFactory(ObjectFactory.with(create: { AProductDescriptionType(withDefaults: false) }, createWithDecoder: { d in try AProductDescriptionType(from: d) }))
        APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType.registerFactory(ObjectFactory.with(create: { AProductPlantProcurementType(withDefaults: false) }, createWithDecoder: { d in try AProductPlantProcurementType(from: d) }))
        APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.registerFactory(ObjectFactory.with(create: { AProductPlantType(withDefaults: false) }, createWithDecoder: { d in try AProductPlantType(from: d) }))
        APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.registerFactory(ObjectFactory.with(create: { AProductSalesDeliveryType(withDefaults: false) }, createWithDecoder: { d in try AProductSalesDeliveryType(from: d) }))
        APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTaxType.registerFactory(ObjectFactory.with(create: { AProductSalesTaxType(withDefaults: false) }, createWithDecoder: { d in try AProductSalesTaxType(from: d) }))
        APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.registerFactory(ObjectFactory.with(create: { AProductStorageLocationType(withDefaults: false) }, createWithDecoder: { d in try AProductStorageLocationType(from: d) }))
        APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.registerFactory(ObjectFactory.with(create: { AProductSupplyPlanningType(withDefaults: false) }, createWithDecoder: { d in try AProductSupplyPlanningType(from: d) }))
        APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.registerFactory(ObjectFactory.with(create: { AProductType(withDefaults: false) }, createWithDecoder: { d in try AProductType(from: d) }))
        APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.registerFactory(ObjectFactory.with(create: { AProductWorkSchedulingType(withDefaults: false) }, createWithDecoder: { d in try AProductWorkSchedulingType(from: d) }))
        APIPRODUCTSRVEntitiesStaticResolver.resolve()
    }
}
