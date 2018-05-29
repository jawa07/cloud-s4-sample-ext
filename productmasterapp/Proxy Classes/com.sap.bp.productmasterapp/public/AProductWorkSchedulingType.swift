// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class AProductWorkSchedulingType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public static var product: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.property(withName: "Product")

    public static var plant: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.property(withName: "Plant")

    public static var materialBaseQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.property(withName: "MaterialBaseQuantity")

    public static var unlimitedOverDelivIsAllowed: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.property(withName: "UnlimitedOverDelivIsAllowed")

    public static var overDelivToleranceLimit: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.property(withName: "OverDelivToleranceLimit")

    public static var underDelivToleranceLimit: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.property(withName: "UnderDelivToleranceLimit")

    public static var productionInvtryManagedLoc: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.property(withName: "ProductionInvtryManagedLoc")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType)
    }

    open class func array(from: EntityValueList) -> Array<AProductWorkSchedulingType> {
        return ArrayConverter.convert(from.toArray(), Array<AProductWorkSchedulingType>())
    }

    open func copy() -> AProductWorkSchedulingType {
        return CastRequired<AProductWorkSchedulingType>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(product: String?, plant: String?) -> EntityKey {
        return EntityKey().with(name: "Product", value: StringValue.of(optional: product)).with(name: "Plant", value: StringValue.of(optional: plant))
    }

    open var materialBaseQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductWorkSchedulingType.materialBaseQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductWorkSchedulingType.materialBaseQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var old: AProductWorkSchedulingType {
        return CastRequired<AProductWorkSchedulingType>.from(self.oldEntity)
    }

    open var overDelivToleranceLimit: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductWorkSchedulingType.overDelivToleranceLimit))
        }
        set(value) {
            self.setOptionalValue(for: AProductWorkSchedulingType.overDelivToleranceLimit, to: DecimalValue.of(optional: value))
        }
    }

    open var plant: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductWorkSchedulingType.plant))
        }
        set(value) {
            self.setOptionalValue(for: AProductWorkSchedulingType.plant, to: StringValue.of(optional: value))
        }
    }

    open var product: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductWorkSchedulingType.product))
        }
        set(value) {
            self.setOptionalValue(for: AProductWorkSchedulingType.product, to: StringValue.of(optional: value))
        }
    }

    open var productionInvtryManagedLoc: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductWorkSchedulingType.productionInvtryManagedLoc))
        }
        set(value) {
            self.setOptionalValue(for: AProductWorkSchedulingType.productionInvtryManagedLoc, to: StringValue.of(optional: value))
        }
    }

    open var underDelivToleranceLimit: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductWorkSchedulingType.underDelivToleranceLimit))
        }
        set(value) {
            self.setOptionalValue(for: AProductWorkSchedulingType.underDelivToleranceLimit, to: DecimalValue.of(optional: value))
        }
    }

    open var unlimitedOverDelivIsAllowed: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductWorkSchedulingType.unlimitedOverDelivIsAllowed))
        }
        set(value) {
            self.setOptionalValue(for: AProductWorkSchedulingType.unlimitedOverDelivIsAllowed, to: BooleanValue.of(optional: value))
        }
    }
}
