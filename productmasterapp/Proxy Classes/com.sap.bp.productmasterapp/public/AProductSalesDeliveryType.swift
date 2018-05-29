// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class AProductSalesDeliveryType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public static var product: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "Product")

    public static var productSalesOrg: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductSalesOrg")

    public static var productDistributionChnl: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductDistributionChnl")

    public static var minimumOrderQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "MinimumOrderQuantity")

    public static var supplyingPlant: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "SupplyingPlant")

    public static var priceSpecificationProductGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "PriceSpecificationProductGroup")

    public static var accountDetnProductGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "AccountDetnProductGroup")

    public static var deliveryNoteProcMinDelivQty: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "DeliveryNoteProcMinDelivQty")

    public static var itemCategoryGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ItemCategoryGroup")

    public static var deliveryQuantityUnit: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "DeliveryQuantityUnit")

    public static var deliveryQuantity: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "DeliveryQuantity")

    public static var productSalesStatus: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductSalesStatus")

    public static var productSalesStatusValidityDate: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductSalesStatusValidityDate")

    public static var salesMeasureUnit: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "SalesMeasureUnit")

    public static var isMarkedForDeletion: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "IsMarkedForDeletion")

    public static var productHierarchy: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductHierarchy")

    public static var firstSalesSpecProductGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "FirstSalesSpecProductGroup")

    public static var secondSalesSpecProductGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "SecondSalesSpecProductGroup")

    public static var thirdSalesSpecProductGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ThirdSalesSpecProductGroup")

    public static var fourthSalesSpecProductGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "FourthSalesSpecProductGroup")

    public static var fifthSalesSpecProductGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "FifthSalesSpecProductGroup")

    public static var minimumMakeToOrderOrderQty: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "MinimumMakeToOrderOrderQty")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType)
    }

    open var accountDetnProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.accountDetnProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.accountDetnProductGroup, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> Array<AProductSalesDeliveryType> {
        return ArrayConverter.convert(from.toArray(), Array<AProductSalesDeliveryType>())
    }

    open func copy() -> AProductSalesDeliveryType {
        return CastRequired<AProductSalesDeliveryType>.from(self.copyEntity())
    }

    open var deliveryNoteProcMinDelivQty: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSalesDeliveryType.deliveryNoteProcMinDelivQty))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.deliveryNoteProcMinDelivQty, to: DecimalValue.of(optional: value))
        }
    }

    open var deliveryQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSalesDeliveryType.deliveryQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.deliveryQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var deliveryQuantityUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.deliveryQuantityUnit))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.deliveryQuantityUnit, to: StringValue.of(optional: value))
        }
    }

    open var fifthSalesSpecProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.fifthSalesSpecProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.fifthSalesSpecProductGroup, to: StringValue.of(optional: value))
        }
    }

    open var firstSalesSpecProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.firstSalesSpecProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.firstSalesSpecProductGroup, to: StringValue.of(optional: value))
        }
    }

    open var fourthSalesSpecProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.fourthSalesSpecProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.fourthSalesSpecProductGroup, to: StringValue.of(optional: value))
        }
    }

    open var isMarkedForDeletion: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductSalesDeliveryType.isMarkedForDeletion))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.isMarkedForDeletion, to: BooleanValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open var itemCategoryGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.itemCategoryGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.itemCategoryGroup, to: StringValue.of(optional: value))
        }
    }

    open class func key(product: String?, productSalesOrg: String?, productDistributionChnl: String?) -> EntityKey {
        return EntityKey().with(name: "Product", value: StringValue.of(optional: product)).with(name: "ProductSalesOrg", value: StringValue.of(optional: productSalesOrg)).with(name: "ProductDistributionChnl", value: StringValue.of(optional: productDistributionChnl))
    }

    open var minimumMakeToOrderOrderQty: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSalesDeliveryType.minimumMakeToOrderOrderQty))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.minimumMakeToOrderOrderQty, to: DecimalValue.of(optional: value))
        }
    }

    open var minimumOrderQuantity: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductSalesDeliveryType.minimumOrderQuantity))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.minimumOrderQuantity, to: DecimalValue.of(optional: value))
        }
    }

    open var old: AProductSalesDeliveryType {
        return CastRequired<AProductSalesDeliveryType>.from(self.oldEntity)
    }

    open var priceSpecificationProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.priceSpecificationProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.priceSpecificationProductGroup, to: StringValue.of(optional: value))
        }
    }

    open var product: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.product))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.product, to: StringValue.of(optional: value))
        }
    }

    open var productDistributionChnl: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.productDistributionChnl))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.productDistributionChnl, to: StringValue.of(optional: value))
        }
    }

    open var productHierarchy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.productHierarchy))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.productHierarchy, to: StringValue.of(optional: value))
        }
    }

    open var productSalesOrg: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.productSalesOrg))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.productSalesOrg, to: StringValue.of(optional: value))
        }
    }

    open var productSalesStatus: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.productSalesStatus))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.productSalesStatus, to: StringValue.of(optional: value))
        }
    }

    open var productSalesStatusValidityDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: AProductSalesDeliveryType.productSalesStatusValidityDate))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.productSalesStatusValidityDate, to: value)
        }
    }

    open var salesMeasureUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.salesMeasureUnit))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.salesMeasureUnit, to: StringValue.of(optional: value))
        }
    }

    open var secondSalesSpecProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.secondSalesSpecProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.secondSalesSpecProductGroup, to: StringValue.of(optional: value))
        }
    }

    open var supplyingPlant: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.supplyingPlant))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.supplyingPlant, to: StringValue.of(optional: value))
        }
    }

    open var thirdSalesSpecProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductSalesDeliveryType.thirdSalesSpecProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductSalesDeliveryType.thirdSalesSpecProductGroup, to: StringValue.of(optional: value))
        }
    }
}
