// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class AProductDescriptionType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public static var product: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.property(withName: "Product")

    public static var language: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.property(withName: "Language")

    public static var productDescription: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.property(withName: "ProductDescription")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType)
    }

    open class func array(from: EntityValueList) -> Array<AProductDescriptionType> {
        return ArrayConverter.convert(from.toArray(), Array<AProductDescriptionType>())
    }

    open func copy() -> AProductDescriptionType {
        return CastRequired<AProductDescriptionType>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(product: String?, language: String?) -> EntityKey {
        return EntityKey().with(name: "Product", value: StringValue.of(optional: product)).with(name: "Language", value: StringValue.of(optional: language))
    }

    open var language: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductDescriptionType.language))
        }
        set(value) {
            self.setOptionalValue(for: AProductDescriptionType.language, to: StringValue.of(optional: value))
        }
    }

    open var old: AProductDescriptionType {
        return CastRequired<AProductDescriptionType>.from(self.oldEntity)
    }

    open var product: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductDescriptionType.product))
        }
        set(value) {
            self.setOptionalValue(for: AProductDescriptionType.product, to: StringValue.of(optional: value))
        }
    }

    open var productDescription: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductDescriptionType.productDescription))
        }
        set(value) {
            self.setOptionalValue(for: AProductDescriptionType.productDescription, to: StringValue.of(optional: value))
        }
    }
}
