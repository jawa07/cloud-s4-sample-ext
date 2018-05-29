// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class AProductSupplyPlanningType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public static var product: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "Product")

    public static var plant: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "Plant")

    public static var fixedLotSizeQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "FixedLotSizeQuantity")

    public static var maximumLotSizeQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "MaximumLotSizeQuantity")

    public static var minimumLotSizeQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "MinimumLotSizeQuantity")

    public static var lotSizeRoundingQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "LotSizeRoundingQuantity")

    public static var lotSizingProcedure: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "LotSizingProcedure")

    public static var mrpType: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "MRPType")

    public static var mrpResponsible: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "MRPResponsible")

    public static var safetyStockQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "SafetyStockQuantity")

    public static var minimumSafetyStockQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "MinimumSafetyStockQuantity")

    public static var planningTimeFence: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "PlanningTimeFence")

    public static var abcIndicator: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "ABCIndicator")

    public static var maximumStockQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "MaximumStockQuantity")

    public static var reorderThresholdQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "ReorderThresholdQuantity")

    public static var plannedDeliveryDurationInDays: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "PlannedDeliveryDurationInDays")

    public static var safetyDuration: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "SafetyDuration")

    public static var planningStrategyGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "PlanningStrategyGroup")

    public static var totalReplenishmentLeadTime: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "TotalReplenishmentLeadTime")

    public static var procurementType: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "ProcurementType")

    public static var procurementSubType: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "ProcurementSubType")

    public static var assemblyScrapPercent: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "AssemblyScrapPercent")

    public static var availabilityCheckType: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "AvailabilityCheckType")

    public static var goodsReceiptDuration: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "GoodsReceiptDuration")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType)
    }

    open var abcIndicator: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSupplyPlanningType.abcIndicator))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.abcIndicator, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> Array<AProductSupplyPlanningType> {
        return ArrayConverter.convert(from.toArray(), Array<AProductSupplyPlanningType>())
    }

    open var assemblyScrapPercent: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSupplyPlanningType.assemblyScrapPercent))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.assemblyScrapPercent, to: DecimalValue.of(optional: value))
        }
    }

    open var availabilityCheckType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSupplyPlanningType.availabilityCheckType))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.availabilityCheckType, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> AProductSupplyPlanningType {
        return CastRequired<AProductSupplyPlanningType>.from(self.copyEntity())
    }

    open var fixedLotSizeQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSupplyPlanningType.fixedLotSizeQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.fixedLotSizeQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var goodsReceiptDuration: BigInteger? {
        get {
            return IntegerValue.optional(self.optionalValue(for: AProductSupplyPlanningType.goodsReceiptDuration))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.goodsReceiptDuration, to: IntegerValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(product: String?, plant: String?) -> EntityKey {
        return EntityKey().with(name: "Product", value: StringValue.of(optional: product)).with(name: "Plant", value: StringValue.of(optional: plant))
    }

    open var lotSizeRoundingQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSupplyPlanningType.lotSizeRoundingQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.lotSizeRoundingQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var lotSizingProcedure: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSupplyPlanningType.lotSizingProcedure))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.lotSizingProcedure, to: StringValue.of(optional: value))
        }
    }

    open var maximumLotSizeQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSupplyPlanningType.maximumLotSizeQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.maximumLotSizeQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var maximumStockQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSupplyPlanningType.maximumStockQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.maximumStockQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var minimumLotSizeQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSupplyPlanningType.minimumLotSizeQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.minimumLotSizeQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var minimumSafetyStockQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSupplyPlanningType.minimumSafetyStockQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.minimumSafetyStockQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var mrpResponsible: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSupplyPlanningType.mrpResponsible))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.mrpResponsible, to: StringValue.of(optional: value))
        }
    }

    open var mrpType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSupplyPlanningType.mrpType))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.mrpType, to: StringValue.of(optional: value))
        }
    }

    open var old: AProductSupplyPlanningType {
        return CastRequired<AProductSupplyPlanningType>.from(self.oldEntity)
    }

    open var plannedDeliveryDurationInDays: BigInteger? {
        get {
            return IntegerValue.optional(self.optionalValue(for: AProductSupplyPlanningType.plannedDeliveryDurationInDays))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.plannedDeliveryDurationInDays, to: IntegerValue.of(optional: value))
        }
    }

    open var planningStrategyGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSupplyPlanningType.planningStrategyGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.planningStrategyGroup, to: StringValue.of(optional: value))
        }
    }

    open var planningTimeFence: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSupplyPlanningType.planningTimeFence))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.planningTimeFence, to: StringValue.of(optional: value))
        }
    }

    open var plant: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSupplyPlanningType.plant))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.plant, to: StringValue.of(optional: value))
        }
    }

    open var procurementSubType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSupplyPlanningType.procurementSubType))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.procurementSubType, to: StringValue.of(optional: value))
        }
    }

    open var procurementType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSupplyPlanningType.procurementType))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.procurementType, to: StringValue.of(optional: value))
        }
    }

    open var product: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSupplyPlanningType.product))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.product, to: StringValue.of(optional: value))
        }
    }

    open var reorderThresholdQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSupplyPlanningType.reorderThresholdQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.reorderThresholdQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var safetyDuration: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSupplyPlanningType.safetyDuration))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.safetyDuration, to: StringValue.of(optional: value))
        }
    }

    open var safetyStockQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSupplyPlanningType.safetyStockQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.safetyStockQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var totalReplenishmentLeadTime: BigInteger? {
        get {
            return IntegerValue.optional(self.optionalValue(for: AProductSupplyPlanningType.totalReplenishmentLeadTime))
        }
        set(value) {
            self.setOptionalValue(for: AProductSupplyPlanningType.totalReplenishmentLeadTime, to: IntegerValue.of(optional: value))
        }
    }
}
