// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class APIPRODUCTSRVEntities<Provider: DataServiceProvider>: DataService<Provider> {
    public override init(provider: Provider) {
        super.init(provider: provider)
        self.provider.metadata = APIPRODUCTSRVEntitiesMetadata.document
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProduct")
    open func aProduct(query: DataQuery = DataQuery()) throws -> Array<AProductType> {
        return try self.fetchAProduct(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProduct")
    open func aProduct(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductType>?, Error?) -> Void) {
        self.fetchAProduct(matching: query, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductDescription")
    open func aProductDescription(query: DataQuery = DataQuery()) throws -> Array<AProductDescriptionType> {
        return try self.fetchAProductDescription(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductDescription")
    open func aProductDescription(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductDescriptionType>?, Error?) -> Void) {
        self.fetchAProductDescription(matching: query, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductPlant")
    open func aProductPlant(query: DataQuery = DataQuery()) throws -> Array<AProductPlantType> {
        return try self.fetchAProductPlant(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductPlant")
    open func aProductPlant(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductPlantType>?, Error?) -> Void) {
        self.fetchAProductPlant(matching: query, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductPlantProcurement")
    open func aProductPlantProcurement(query: DataQuery = DataQuery()) throws -> Array<AProductPlantProcurementType> {
        return try self.fetchAProductPlantProcurement(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductPlantProcurement")
    open func aProductPlantProcurement(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductPlantProcurementType>?, Error?) -> Void) {
        self.fetchAProductPlantProcurement(matching: query, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductSalesDelivery")
    open func aProductSalesDelivery(query: DataQuery = DataQuery()) throws -> Array<AProductSalesDeliveryType> {
        return try self.fetchAProductSalesDelivery(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductSalesDelivery")
    open func aProductSalesDelivery(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductSalesDeliveryType>?, Error?) -> Void) {
        self.fetchAProductSalesDelivery(matching: query, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductSalesTax")
    open func aProductSalesTax(query: DataQuery = DataQuery()) throws -> Array<AProductSalesTaxType> {
        return try self.fetchAProductSalesTax(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductSalesTax")
    open func aProductSalesTax(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductSalesTaxType>?, Error?) -> Void) {
        self.fetchAProductSalesTax(matching: query, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductStorageLocation")
    open func aProductStorageLocation(query: DataQuery = DataQuery()) throws -> Array<AProductStorageLocationType> {
        return try self.fetchAProductStorageLocation(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductStorageLocation")
    open func aProductStorageLocation(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductStorageLocationType>?, Error?) -> Void) {
        self.fetchAProductStorageLocation(matching: query, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductSupplyPlanning")
    open func aProductSupplyPlanning(query: DataQuery = DataQuery()) throws -> Array<AProductSupplyPlanningType> {
        return try self.fetchAProductSupplyPlanning(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductSupplyPlanning")
    open func aProductSupplyPlanning(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductSupplyPlanningType>?, Error?) -> Void) {
        self.fetchAProductSupplyPlanning(matching: query, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductWorkScheduling")
    open func aProductWorkScheduling(query: DataQuery = DataQuery()) throws -> Array<AProductWorkSchedulingType> {
        return try self.fetchAProductWorkScheduling(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAProductWorkScheduling")
    open func aProductWorkScheduling(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductWorkSchedulingType>?, Error?) -> Void) {
        self.fetchAProductWorkScheduling(matching: query, completionHandler: completionHandler)
    }

    open func fetchAProduct(matching query: DataQuery = DataQuery()) throws -> Array<AProductType> {
        return try AProductType.array(from: self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProduct)).entityList())
    }

    open func fetchAProduct(matching query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductType>?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: Array<AProductType> = try self.fetchAProduct(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductDescription(matching query: DataQuery = DataQuery()) throws -> Array<AProductDescriptionType> {
        return try AProductDescriptionType.array(from: self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductDescription)).entityList())
    }

    open func fetchAProductDescription(matching query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductDescriptionType>?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: Array<AProductDescriptionType> = try self.fetchAProductDescription(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductDescriptionType(matching query: DataQuery) throws -> AProductDescriptionType {
        return try CastRequired<AProductDescriptionType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductDescription)).requiredEntity())
    }

    open func fetchAProductDescriptionType(matching query: DataQuery, completionHandler: @escaping (AProductDescriptionType?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: AProductDescriptionType = try self.fetchAProductDescriptionType(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductPlant(matching query: DataQuery = DataQuery()) throws -> Array<AProductPlantType> {
        return try AProductPlantType.array(from: self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlant)).entityList())
    }

    open func fetchAProductPlant(matching query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductPlantType>?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: Array<AProductPlantType> = try self.fetchAProductPlant(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductPlantProcurement(matching query: DataQuery = DataQuery()) throws -> Array<AProductPlantProcurementType> {
        return try AProductPlantProcurementType.array(from: self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantProcurement)).entityList())
    }

    open func fetchAProductPlantProcurement(matching query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductPlantProcurementType>?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: Array<AProductPlantProcurementType> = try self.fetchAProductPlantProcurement(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductPlantProcurementType(matching query: DataQuery) throws -> AProductPlantProcurementType {
        return try CastRequired<AProductPlantProcurementType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantProcurement)).requiredEntity())
    }

    open func fetchAProductPlantProcurementType(matching query: DataQuery, completionHandler: @escaping (AProductPlantProcurementType?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: AProductPlantProcurementType = try self.fetchAProductPlantProcurementType(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductPlantType(matching query: DataQuery) throws -> AProductPlantType {
        return try CastRequired<AProductPlantType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlant)).requiredEntity())
    }

    open func fetchAProductPlantType(matching query: DataQuery, completionHandler: @escaping (AProductPlantType?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: AProductPlantType = try self.fetchAProductPlantType(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductSalesDelivery(matching query: DataQuery = DataQuery()) throws -> Array<AProductSalesDeliveryType> {
        return try AProductSalesDeliveryType.array(from: self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesDelivery)).entityList())
    }

    open func fetchAProductSalesDelivery(matching query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductSalesDeliveryType>?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: Array<AProductSalesDeliveryType> = try self.fetchAProductSalesDelivery(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductSalesDeliveryType(matching query: DataQuery) throws -> AProductSalesDeliveryType {
        return try CastRequired<AProductSalesDeliveryType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesDelivery)).requiredEntity())
    }

    open func fetchAProductSalesDeliveryType(matching query: DataQuery, completionHandler: @escaping (AProductSalesDeliveryType?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: AProductSalesDeliveryType = try self.fetchAProductSalesDeliveryType(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductSalesTax(matching query: DataQuery = DataQuery()) throws -> Array<AProductSalesTaxType> {
        return try AProductSalesTaxType.array(from: self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesTax)).entityList())
    }

    open func fetchAProductSalesTax(matching query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductSalesTaxType>?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: Array<AProductSalesTaxType> = try self.fetchAProductSalesTax(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductSalesTaxType(matching query: DataQuery) throws -> AProductSalesTaxType {
        return try CastRequired<AProductSalesTaxType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesTax)).requiredEntity())
    }

    open func fetchAProductSalesTaxType(matching query: DataQuery, completionHandler: @escaping (AProductSalesTaxType?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: AProductSalesTaxType = try self.fetchAProductSalesTaxType(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductStorageLocation(matching query: DataQuery = DataQuery()) throws -> Array<AProductStorageLocationType> {
        return try AProductStorageLocationType.array(from: self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductStorageLocation)).entityList())
    }

    open func fetchAProductStorageLocation(matching query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductStorageLocationType>?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: Array<AProductStorageLocationType> = try self.fetchAProductStorageLocation(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductStorageLocationType(matching query: DataQuery) throws -> AProductStorageLocationType {
        return try CastRequired<AProductStorageLocationType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductStorageLocation)).requiredEntity())
    }

    open func fetchAProductStorageLocationType(matching query: DataQuery, completionHandler: @escaping (AProductStorageLocationType?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: AProductStorageLocationType = try self.fetchAProductStorageLocationType(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductSupplyPlanning(matching query: DataQuery = DataQuery()) throws -> Array<AProductSupplyPlanningType> {
        return try AProductSupplyPlanningType.array(from: self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSupplyPlanning)).entityList())
    }

    open func fetchAProductSupplyPlanning(matching query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductSupplyPlanningType>?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: Array<AProductSupplyPlanningType> = try self.fetchAProductSupplyPlanning(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductSupplyPlanningType(matching query: DataQuery) throws -> AProductSupplyPlanningType {
        return try CastRequired<AProductSupplyPlanningType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSupplyPlanning)).requiredEntity())
    }

    open func fetchAProductSupplyPlanningType(matching query: DataQuery, completionHandler: @escaping (AProductSupplyPlanningType?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: AProductSupplyPlanningType = try self.fetchAProductSupplyPlanningType(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductType(matching query: DataQuery) throws -> AProductType {
        return try CastRequired<AProductType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProduct)).requiredEntity())
    }

    open func fetchAProductType(matching query: DataQuery, completionHandler: @escaping (AProductType?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: AProductType = try self.fetchAProductType(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductWorkScheduling(matching query: DataQuery = DataQuery()) throws -> Array<AProductWorkSchedulingType> {
        return try AProductWorkSchedulingType.array(from: self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductWorkScheduling)).entityList())
    }

    open func fetchAProductWorkScheduling(matching query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AProductWorkSchedulingType>?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: Array<AProductWorkSchedulingType> = try self.fetchAProductWorkScheduling(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAProductWorkSchedulingType(matching query: DataQuery) throws -> AProductWorkSchedulingType {
        return try CastRequired<AProductWorkSchedulingType>.from(self.executeQuery(query.fromDefault(APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductWorkScheduling)).requiredEntity())
    }

    open func fetchAProductWorkSchedulingType(matching query: DataQuery, completionHandler: @escaping (AProductWorkSchedulingType?, Error?) -> Void) {
        self.addBackgroundOperation {
            do {
                let result: AProductWorkSchedulingType = try self.fetchAProductWorkSchedulingType(matching: query)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open override func refreshMetadata() throws {
        objc_sync_enter(self)
        defer { objc_sync_exit(self) }
        do {
            try ProxyInternal.refreshMetadata(service: self, fetcher: nil, options: APIPRODUCTSRVEntitiesMetadataParser.options)
            APIPRODUCTSRVEntitiesMetadataChanges.merge(metadata: self.metadata)
        }
    }
}
