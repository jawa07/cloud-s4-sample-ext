// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class AProductSalesTaxType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public static var product: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTaxType.property(withName: "Product")

    public static var country: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTaxType.property(withName: "Country")

    public static var taxCategory: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTaxType.property(withName: "TaxCategory")

    public static var taxClassification: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTaxType.property(withName: "TaxClassification")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTaxType)
    }

    open class func array(from: EntityValueList) -> Array<AProductSalesTaxType> {
        return ArrayConverter.convert(from.toArray(), Array<AProductSalesTaxType>())
    }

    open func copy() -> AProductSalesTaxType {
        return CastRequired<AProductSalesTaxType>.from(self.copyEntity())
    }

    open var country: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesTaxType.country))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesTaxType.country, to: StringValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(product: String?, country: String?, taxCategory: String?, taxClassification: String?) -> EntityKey {
        return EntityKey().with(name: "Product", value: StringValue.of(optional: product)).with(name: "Country", value: StringValue.of(optional: country)).with(name: "TaxCategory", value: StringValue.of(optional: taxCategory)).with(name: "TaxClassification", value: StringValue.of(optional: taxClassification))
    }

    open var old: AProductSalesTaxType {
        return CastRequired<AProductSalesTaxType>.from(self.oldEntity)
    }

    open var product: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesTaxType.product))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesTaxType.product, to: StringValue.of(optional: value))
        }
    }

    open var taxCategory: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesTaxType.taxCategory))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesTaxType.taxCategory, to: StringValue.of(optional: value))
        }
    }

    open var taxClassification: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesTaxType.taxClassification))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesTaxType.taxClassification, to: StringValue.of(optional: value))
        }
    }
}
