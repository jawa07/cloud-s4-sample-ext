// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class AProductPlantProcurementType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public static var product: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType.property(withName: "Product")

    public static var plant: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType.property(withName: "Plant")

    public static var isAutoPurOrdCreationAllowed: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType.property(withName: "IsAutoPurOrdCreationAllowed")

    public static var isSourceListRequired: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType.property(withName: "IsSourceListRequired")

    public static var sourceOfSupplyCategory: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType.property(withName: "SourceOfSupplyCategory")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType)
    }

    open class func array(from: EntityValueList) -> Array<AProductPlantProcurementType> {
        return ArrayConverter.convert(from.toArray(), Array<AProductPlantProcurementType>())
    }

    open func copy() -> AProductPlantProcurementType {
        return CastRequired<AProductPlantProcurementType>.from(self.copyEntity())
    }

    open var isAutoPurOrdCreationAllowed: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductPlantProcurementType.isAutoPurOrdCreationAllowed))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantProcurementType.isAutoPurOrdCreationAllowed, to: BooleanValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open var isSourceListRequired: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductPlantProcurementType.isSourceListRequired))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantProcurementType.isSourceListRequired, to: BooleanValue.of(optional: value))
        }
    }

    open class func key(product: String?, plant: String?) -> EntityKey {
        return EntityKey().with(name: "Product", value: StringValue.of(optional: product)).with(name: "Plant", value: StringValue.of(optional: plant))
    }

    open var old: AProductPlantProcurementType {
        return CastRequired<AProductPlantProcurementType>.from(self.oldEntity)
    }

    open var plant: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantProcurementType.plant))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantProcurementType.plant, to: StringValue.of(optional: value))
        }
    }

    open var product: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantProcurementType.product))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantProcurementType.product, to: StringValue.of(optional: value))
        }
    }

    open var sourceOfSupplyCategory: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductPlantProcurementType.sourceOfSupplyCategory))
        }
        set(value) {
            self.setOptionalValue(for: AProductPlantProcurementType.sourceOfSupplyCategory, to: StringValue.of(optional: value))
        }
    }
}
