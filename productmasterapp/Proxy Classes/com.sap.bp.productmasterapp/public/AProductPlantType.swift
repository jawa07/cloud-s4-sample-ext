// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class AProductPlantType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public static var product: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "Product")

    public static var plant: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "Plant")

    public static var purchasingGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "PurchasingGroup")

    public static var countryOfOrigin: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "CountryOfOrigin")

    public static var regionOfOrigin: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "RegionOfOrigin")

    public static var productionInvtryManagedLoc: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProductionInvtryManagedLoc")

    public static var profileCode: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProfileCode")

    public static var profileValidityStartDate: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProfileValidityStartDate")

    public static var availabilityCheckType: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "AvailabilityCheckType")

    public static var fiscalYearVariant: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FiscalYearVariant")

    public static var periodType: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "PeriodType")

    public static var profitCenter: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProfitCenter")

    public static var commodity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "Commodity")

    public static var goodsReceiptDuration: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "GoodsReceiptDuration")

    public static var maintenanceStatusName: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MaintenanceStatusName")

    public static var isMarkedForDeletion: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsMarkedForDeletion")

    public static var mrpType: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MRPType")

    public static var mrpResponsible: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MRPResponsible")

    public static var abcIndicator: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ABCIndicator")

    public static var minimumLotSizeQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MinimumLotSizeQuantity")

    public static var maximumLotSizeQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MaximumLotSizeQuantity")

    public static var fixedLotSizeQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FixedLotSizeQuantity")

    public static var consumptionTaxCtrlCode: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ConsumptionTaxCtrlCode")

    public static var isCoProduct: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsCoProduct")

    public static var productIsConfigurable: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProductIsConfigurable")

    public static var stockDeterminationGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "StockDeterminationGroup")

    public static var stockInTransferQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "StockInTransferQuantity")

    public static var stockInTransitQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "StockInTransitQuantity")

    public static var hasPostToInspectionStock: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "HasPostToInspectionStock")

    public static var isBatchManagementRequired: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsBatchManagementRequired")

    public static var serialNumberProfile: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "SerialNumberProfile")

    public static var isNegativeStockAllowed: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsNegativeStockAllowed")

    public static var goodsReceiptBlockedStockQty: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "GoodsReceiptBlockedStockQty")

    public static var hasConsignmentCtrl: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "HasConsignmentCtrl")

    public static var fiscalYearCurrentPeriod: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FiscalYearCurrentPeriod")

    public static var fiscalMonthCurrentPeriod: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FiscalMonthCurrentPeriod")

    public static var procurementType: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProcurementType")

    public static var isInternalBatchManaged: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsInternalBatchManaged")

    public static var productCFOPCategory: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProductCFOPCategory")

    public static var toProductPlantProcurement: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductPlantProcurement")

    public static var toProductSupplyPlanning: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductSupplyPlanning")

    public static var toProductWorkScheduling: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductWorkScheduling")

    public static var toStorageLocation: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_StorageLocation")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType)
    }

    open var abcIndicator: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.abcIndicator))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.abcIndicator, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> Array<AProductPlantType> {
        return ArrayConverter.convert(from.toArray(), Array<AProductPlantType>())
    }

    open var availabilityCheckType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.availabilityCheckType))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.availabilityCheckType, to: StringValue.of(optional: value))
        }
    }

    open var commodity: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.commodity))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.commodity, to: StringValue.of(optional: value))
        }
    }

    open var consumptionTaxCtrlCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.consumptionTaxCtrlCode))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.consumptionTaxCtrlCode, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> AProductPlantType {
        return CastRequired<AProductPlantType>.from(self.copyEntity())
    }

    open var countryOfOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.countryOfOrigin))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.countryOfOrigin, to: StringValue.of(optional: value))
        }
    }

    open var fiscalMonthCurrentPeriod: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.fiscalMonthCurrentPeriod))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.fiscalMonthCurrentPeriod, to: StringValue.of(optional: value))
        }
    }

    open var fiscalYearCurrentPeriod: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.fiscalYearCurrentPeriod))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.fiscalYearCurrentPeriod, to: StringValue.of(optional: value))
        }
    }

    open var fiscalYearVariant: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.fiscalYearVariant))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.fiscalYearVariant, to: StringValue.of(optional: value))
        }
    }

    open var fixedLotSizeQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductPlantType.fixedLotSizeQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.fixedLotSizeQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var goodsReceiptBlockedStockQty: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductPlantType.goodsReceiptBlockedStockQty))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.goodsReceiptBlockedStockQty, to: DecimalValue.of(optional: value))
        }
    }

    open var goodsReceiptDuration: BigInteger? {
        get {
            return IntegerValue.optional(self.optionalValue(for: AProductPlantType.goodsReceiptDuration))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.goodsReceiptDuration, to: IntegerValue.of(optional: value))
        }
    }

    open var hasConsignmentCtrl: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.hasConsignmentCtrl))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.hasConsignmentCtrl, to: StringValue.of(optional: value))
        }
    }

    open var hasPostToInspectionStock: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductPlantType.hasPostToInspectionStock))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.hasPostToInspectionStock, to: BooleanValue.of(optional: value))
        }
    }

    open var isBatchManagementRequired: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductPlantType.isBatchManagementRequired))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.isBatchManagementRequired, to: BooleanValue.of(optional: value))
        }
    }

    open var isCoProduct: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductPlantType.isCoProduct))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.isCoProduct, to: BooleanValue.of(optional: value))
        }
    }

    open var isInternalBatchManaged: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductPlantType.isInternalBatchManaged))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.isInternalBatchManaged, to: BooleanValue.of(optional: value))
        }
    }

    open var isMarkedForDeletion: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductPlantType.isMarkedForDeletion))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.isMarkedForDeletion, to: BooleanValue.of(optional: value))
        }
    }

    open var isNegativeStockAllowed: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductPlantType.isNegativeStockAllowed))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.isNegativeStockAllowed, to: BooleanValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(product: String?, plant: String?) -> EntityKey {
        return EntityKey().with(name: "Product", value: StringValue.of(optional: product)).with(name: "Plant", value: StringValue.of(optional: plant))
    }

    open var maintenanceStatusName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.maintenanceStatusName))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.maintenanceStatusName, to: StringValue.of(optional: value))
        }
    }

    open var maximumLotSizeQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductPlantType.maximumLotSizeQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.maximumLotSizeQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var minimumLotSizeQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductPlantType.minimumLotSizeQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.minimumLotSizeQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var mrpResponsible: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.mrpResponsible))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.mrpResponsible, to: StringValue.of(optional: value))
        }
    }

    open var mrpType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.mrpType))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.mrpType, to: StringValue.of(optional: value))
        }
    }

    open var old: AProductPlantType {
        return CastRequired<AProductPlantType>.from(self.oldEntity)
    }

    open var periodType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.periodType))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.periodType, to: StringValue.of(optional: value))
        }
    }

    open var plant: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.plant))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.plant, to: StringValue.of(optional: value))
        }
    }

    open var procurementType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.procurementType))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.procurementType, to: StringValue.of(optional: value))
        }
    }

    open var product: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.product))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.product, to: StringValue.of(optional: value))
        }
    }

    open var productCFOPCategory: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.productCFOPCategory))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.productCFOPCategory, to: StringValue.of(optional: value))
        }
    }

    open var productIsConfigurable: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.productIsConfigurable))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.productIsConfigurable, to: StringValue.of(optional: value))
        }
    }

    open var productionInvtryManagedLoc: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.productionInvtryManagedLoc))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.productionInvtryManagedLoc, to: StringValue.of(optional: value))
        }
    }

    open var profileCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.profileCode))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.profileCode, to: StringValue.of(optional: value))
        }
    }

    open var profileValidityStartDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: AProductPlantType.profileValidityStartDate))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.profileValidityStartDate, to: value)
        }
    }

    open var profitCenter: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.profitCenter))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.profitCenter, to: StringValue.of(optional: value))
        }
    }

    open var purchasingGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.purchasingGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.purchasingGroup, to: StringValue.of(optional: value))
        }
    }

    open var regionOfOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.regionOfOrigin))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.regionOfOrigin, to: StringValue.of(optional: value))
        }
    }

    open var serialNumberProfile: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.serialNumberProfile))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.serialNumberProfile, to: StringValue.of(optional: value))
        }
    }

    open var stockDeterminationGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantType.stockDeterminationGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.stockDeterminationGroup, to: StringValue.of(optional: value))
        }
    }

    open var stockInTransferQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductPlantType.stockInTransferQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.stockInTransferQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var stockInTransitQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductPlantType.stockInTransitQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.stockInTransitQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var toProductPlantProcurement: AProductPlantProcurementType? {
        get {
            return CastOptional<AProductPlantProcurementType>.from(self.optionalValue(for: AProductPlantType.toProductPlantProcurement))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.toProductPlantProcurement, to: value)
        }
    }

    open var toProductSupplyPlanning: AProductSupplyPlanningType? {
        get {
            return CastOptional<AProductSupplyPlanningType>.from(self.optionalValue(for: AProductPlantType.toProductSupplyPlanning))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.toProductSupplyPlanning, to: value)
        }
    }

    open var toProductWorkScheduling: AProductWorkSchedulingType? {
        get {
            return CastOptional<AProductWorkSchedulingType>.from(self.optionalValue(for: AProductPlantType.toProductWorkScheduling))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantType.toProductWorkScheduling, to: value)
        }
    }

    open var toStorageLocation: Array<AProductStorageLocationType> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: AProductPlantType.toStorageLocation)).toArray(), Array<AProductStorageLocationType>())
        }
        set(value) {
            AProductPlantType.toStorageLocation.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }
}
