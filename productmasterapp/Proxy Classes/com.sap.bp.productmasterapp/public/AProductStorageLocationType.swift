// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class AProductStorageLocationType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public static var product: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "Product")

    public static var plant: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "Plant")

    public static var storageLocation: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "StorageLocation")

    public static var warehouseStorageBin: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "WarehouseStorageBin")

    public static var maintenanceStatus: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "MaintenanceStatus")

    public static var physicalInventoryBlockInd: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "PhysicalInventoryBlockInd")

    public static var creationDate: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "CreationDate")

    public static var isMarkedForDeletion: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "IsMarkedForDeletion")

    public static var dateOfLastPostedCntUnRstrcdStk: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "DateOfLastPostedCntUnRstrcdStk")

    public static var inventoryCorrectionFactor: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InventoryCorrectionFactor")

    public static var invtryRestrictedUseStockInd: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InvtryRestrictedUseStockInd")

    public static var invtryCurrentYearStockInd: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InvtryCurrentYearStockInd")

    public static var invtryQualInspCurrentYrStkInd: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InvtryQualInspCurrentYrStkInd")

    public static var inventoryBlockStockInd: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InventoryBlockStockInd")

    public static var invtryRestStockPrevPeriodInd: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InvtryRestStockPrevPeriodInd")

    public static var inventoryStockPrevPeriod: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InventoryStockPrevPeriod")

    public static var invtryStockQltyInspPrevPeriod: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InvtryStockQltyInspPrevPeriod")

    public static var hasInvtryBlockStockPrevPeriod: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "HasInvtryBlockStockPrevPeriod")

    public static var fiscalYearCurrentPeriod: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "FiscalYearCurrentPeriod")

    public static var fiscalMonthCurrentPeriod: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "FiscalMonthCurrentPeriod")

    public static var fiscalYearCurrentInvtryPeriod: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "FiscalYearCurrentInvtryPeriod")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType)
    }

    open class func array(from: EntityValueList) -> Array<AProductStorageLocationType> {
        return ArrayConverter.convert(from.toArray(), Array<AProductStorageLocationType>())
    }

    open func copy() -> AProductStorageLocationType {
        return CastRequired<AProductStorageLocationType>.from(self.copyEntity())
    }

    open var creationDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: AProductStorageLocationType.creationDate))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.creationDate, to: value)
        }
    }

    open var dateOfLastPostedCntUnRstrcdStk: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: AProductStorageLocationType.dateOfLastPostedCntUnRstrcdStk))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.dateOfLastPostedCntUnRstrcdStk, to: value)
        }
    }

    open var fiscalMonthCurrentPeriod: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.fiscalMonthCurrentPeriod))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.fiscalMonthCurrentPeriod, to: StringValue.of(optional: value))
        }
    }

    open var fiscalYearCurrentInvtryPeriod: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.fiscalYearCurrentInvtryPeriod))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.fiscalYearCurrentInvtryPeriod, to: StringValue.of(optional: value))
        }
    }

    open var fiscalYearCurrentPeriod: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.fiscalYearCurrentPeriod))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.fiscalYearCurrentPeriod, to: StringValue.of(optional: value))
        }
    }

    open var hasInvtryBlockStockPrevPeriod: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.hasInvtryBlockStockPrevPeriod))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.hasInvtryBlockStockPrevPeriod, to: StringValue.of(optional: value))
        }
    }

    open var inventoryBlockStockInd: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.inventoryBlockStockInd))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.inventoryBlockStockInd, to: StringValue.of(optional: value))
        }
    }

    open var inventoryCorrectionFactor: Double? {
        get {
            return DoubleValue.optional(self.optionalValue(for: AProductStorageLocationType.inventoryCorrectionFactor))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.inventoryCorrectionFactor, to: DoubleValue.of(optional: value))
        }
    }

    open var inventoryStockPrevPeriod: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.inventoryStockPrevPeriod))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.inventoryStockPrevPeriod, to: StringValue.of(optional: value))
        }
    }

    open var invtryCurrentYearStockInd: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.invtryCurrentYearStockInd))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.invtryCurrentYearStockInd, to: StringValue.of(optional: value))
        }
    }

    open var invtryQualInspCurrentYrStkInd: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.invtryQualInspCurrentYrStkInd))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.invtryQualInspCurrentYrStkInd, to: StringValue.of(optional: value))
        }
    }

    open var invtryRestStockPrevPeriodInd: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.invtryRestStockPrevPeriodInd))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.invtryRestStockPrevPeriodInd, to: StringValue.of(optional: value))
        }
    }

    open var invtryRestrictedUseStockInd: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.invtryRestrictedUseStockInd))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.invtryRestrictedUseStockInd, to: StringValue.of(optional: value))
        }
    }

    open var invtryStockQltyInspPrevPeriod: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.invtryStockQltyInspPrevPeriod))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.invtryStockQltyInspPrevPeriod, to: StringValue.of(optional: value))
        }
    }

    open var isMarkedForDeletion: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductStorageLocationType.isMarkedForDeletion))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.isMarkedForDeletion, to: BooleanValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(product: String?, plant: String?, storageLocation: String?) -> EntityKey {
        return EntityKey().with(name: "Product", value: StringValue.of(optional: product)).with(name: "Plant", value: StringValue.of(optional: plant)).with(name: "StorageLocation", value: StringValue.of(optional: storageLocation))
    }

    open var maintenanceStatus: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.maintenanceStatus))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.maintenanceStatus, to: StringValue.of(optional: value))
        }
    }

    open var old: AProductStorageLocationType {
        return CastRequired<AProductStorageLocationType>.from(self.oldEntity)
    }

    open var physicalInventoryBlockInd: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.physicalInventoryBlockInd))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.physicalInventoryBlockInd, to: StringValue.of(optional: value))
        }
    }

    open var plant: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.plant))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.plant, to: StringValue.of(optional: value))
        }
    }

    open var product: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.product))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.product, to: StringValue.of(optional: value))
        }
    }

    open var storageLocation: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.storageLocation))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.storageLocation, to: StringValue.of(optional: value))
        }
    }

    open var warehouseStorageBin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductStorageLocationType.warehouseStorageBin))
        }
        set(value) {
            self.setOptionalValue(for: AProductStorageLocationType.warehouseStorageBin, to: StringValue.of(optional: value))
        }
    }
}
