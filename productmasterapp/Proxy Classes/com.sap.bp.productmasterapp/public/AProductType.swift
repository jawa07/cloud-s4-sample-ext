// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

open class AProductType: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public static var product: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "Product")

    public static var productType: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductType")

    public static var crossPlantStatus: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CrossPlantStatus")

    public static var crossPlantStatusValidityDate: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CrossPlantStatusValidityDate")

    public static var creationDate: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CreationDate")

    public static var createdByUser: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CreatedByUser")

    public static var lastChangeDate: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "LastChangeDate")

    public static var lastChangedByUser: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "LastChangedByUser")

    public static var isMarkedForDeletion: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsMarkedForDeletion")

    public static var productOldID: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductOldID")

    public static var grossWeight: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "GrossWeight")

    public static var purchaseOrderQuantityUnit: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "PurchaseOrderQuantityUnit")

    public static var sourceOfSupply: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SourceOfSupply")

    public static var weightUnit: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "WeightUnit")

    public static var netWeight: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "NetWeight")

    public static var countryOfOrigin: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CountryOfOrigin")

    public static var competitorID: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CompetitorID")

    public static var productGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductGroup")

    public static var baseUnit: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "BaseUnit")

    public static var itemCategoryGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ItemCategoryGroup")

    public static var productHierarchy: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductHierarchy")

    public static var division: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "Division")

    public static var varblPurOrdUnitIsActive: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "VarblPurOrdUnitIsActive")

    public static var volumeUnit: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "VolumeUnit")

    public static var materialVolume: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaterialVolume")

    public static var anpCode: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ANPCode")

    public static var brand: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "Brand")

    public static var procurementRule: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProcurementRule")

    public static var validityStartDate: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ValidityStartDate")

    public static var lowLevelCode: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "LowLevelCode")

    public static var prodNoInGenProdInPrepackProd: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProdNoInGenProdInPrepackProd")

    public static var serialIdentifierAssgmtProfile: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SerialIdentifierAssgmtProfile")

    public static var sizeOrDimensionText: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SizeOrDimensionText")

    public static var industryStandardName: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IndustryStandardName")

    public static var productStandardID: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductStandardID")

    public static var internationalArticleNumberCat: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "InternationalArticleNumberCat")

    public static var productIsConfigurable: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductIsConfigurable")

    public static var isBatchManagementRequired: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsBatchManagementRequired")

    public static var externalProductGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ExternalProductGroup")

    public static var crossPlantConfigurableProduct: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CrossPlantConfigurableProduct")

    public static var serialNoExplicitnessLevel: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SerialNoExplicitnessLevel")

    public static var productManufacturerNumber: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductManufacturerNumber")

    public static var manufacturerPartProfile: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ManufacturerPartProfile")

    public static var changeNumber: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ChangeNumber")

    public static var materialRevisionLevel: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaterialRevisionLevel")

    public static var handlingIndicator: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "HandlingIndicator")

    public static var warehouseProductGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "WarehouseProductGroup")

    public static var warehouseStorageCondition: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "WarehouseStorageCondition")

    public static var standardHandlingUnitType: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "StandardHandlingUnitType")

    public static var serialNumberProfile: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SerialNumberProfile")

    public static var adjustmentProfile: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "AdjustmentProfile")

    public static var preferredUnitOfMeasure: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "PreferredUnitOfMeasure")

    public static var isPilferable: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsPilferable")

    public static var isRelevantForHzdsSubstances: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsRelevantForHzdsSubstances")

    public static var quarantinePeriod: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "QuarantinePeriod")

    public static var timeUnitForQuarantinePeriod: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "TimeUnitForQuarantinePeriod")

    public static var qualityInspectionGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "QualityInspectionGroup")

    public static var authorizationGroup: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "AuthorizationGroup")

    public static var handlingUnitType: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "HandlingUnitType")

    public static var hasVariableTareWeight: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "HasVariableTareWeight")

    public static var maximumPackagingLength: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaximumPackagingLength")

    public static var maximumPackagingWidth: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaximumPackagingWidth")

    public static var maximumPackagingHeight: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaximumPackagingHeight")

    public static var yy1CorningexamplePRD: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "YY1_Corningexample_PRD")

    public static var toDescription: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_Description")

    public static var toPlant: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_Plant")

    public static var toProductSalesTax: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductSalesTax")

    public static var toSalesDelivery: Property = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_SalesDelivery")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType)
    }

    open var adjustmentProfile: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.adjustmentProfile))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.adjustmentProfile, to: StringValue.of(optional: value))
        }
    }

    open var anpCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.anpCode))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.anpCode, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> Array<AProductType> {
        return ArrayConverter.convert(from.toArray(), Array<AProductType>())
    }

    open var authorizationGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.authorizationGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.authorizationGroup, to: StringValue.of(optional: value))
        }
    }

    open var baseUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.baseUnit))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.baseUnit, to: StringValue.of(optional: value))
        }
    }

    open var brand: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.brand))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.brand, to: StringValue.of(optional: value))
        }
    }

    open var changeNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.changeNumber))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.changeNumber, to: StringValue.of(optional: value))
        }
    }

    open var competitorID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.competitorID))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.competitorID, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> AProductType {
        return CastRequired<AProductType>.from(self.copyEntity())
    }

    open var countryOfOrigin: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.countryOfOrigin))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.countryOfOrigin, to: StringValue.of(optional: value))
        }
    }

    open var createdByUser: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.createdByUser))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.createdByUser, to: StringValue.of(optional: value))
        }
    }

    open var creationDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: AProductType.creationDate))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.creationDate, to: value)
        }
    }

    open var crossPlantConfigurableProduct: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.crossPlantConfigurableProduct))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.crossPlantConfigurableProduct, to: StringValue.of(optional: value))
        }
    }

    open var crossPlantStatus: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.crossPlantStatus))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.crossPlantStatus, to: StringValue.of(optional: value))
        }
    }

    open var crossPlantStatusValidityDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: AProductType.crossPlantStatusValidityDate))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.crossPlantStatusValidityDate, to: value)
        }
    }

    open var division: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.division))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.division, to: StringValue.of(optional: value))
        }
    }

    open var externalProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.externalProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.externalProductGroup, to: StringValue.of(optional: value))
        }
    }

    open var grossWeight: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductType.grossWeight))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.grossWeight, to: DecimalValue.of(optional: value))
        }
    }

    open var handlingIndicator: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.handlingIndicator))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.handlingIndicator, to: StringValue.of(optional: value))
        }
    }

    open var handlingUnitType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.handlingUnitType))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.handlingUnitType, to: StringValue.of(optional: value))
        }
    }

    open var hasVariableTareWeight: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductType.hasVariableTareWeight))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.hasVariableTareWeight, to: BooleanValue.of(optional: value))
        }
    }

    open var industryStandardName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.industryStandardName))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.industryStandardName, to: StringValue.of(optional: value))
        }
    }

    open var internationalArticleNumberCat: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.internationalArticleNumberCat))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.internationalArticleNumberCat, to: StringValue.of(optional: value))
        }
    }

    open var isBatchManagementRequired: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductType.isBatchManagementRequired))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.isBatchManagementRequired, to: BooleanValue.of(optional: value))
        }
    }

    open var isMarkedForDeletion: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductType.isMarkedForDeletion))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.isMarkedForDeletion, to: BooleanValue.of(optional: value))
        }
    }

    open var isPilferable: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductType.isPilferable))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.isPilferable, to: BooleanValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open var isRelevantForHzdsSubstances: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductType.isRelevantForHzdsSubstances))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.isRelevantForHzdsSubstances, to: BooleanValue.of(optional: value))
        }
    }

    open var itemCategoryGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.itemCategoryGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.itemCategoryGroup, to: StringValue.of(optional: value))
        }
    }

    open class func key(product: String?) -> EntityKey {
        return EntityKey().with(name: "Product", value: StringValue.of(optional: product))
    }

    open var lastChangeDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: AProductType.lastChangeDate))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.lastChangeDate, to: value)
        }
    }

    open var lastChangedByUser: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.lastChangedByUser))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.lastChangedByUser, to: StringValue.of(optional: value))
        }
    }

    open var lowLevelCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.lowLevelCode))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.lowLevelCode, to: StringValue.of(optional: value))
        }
    }

    open var manufacturerPartProfile: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.manufacturerPartProfile))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.manufacturerPartProfile, to: StringValue.of(optional: value))
        }
    }

    open var materialRevisionLevel: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.materialRevisionLevel))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.materialRevisionLevel, to: StringValue.of(optional: value))
        }
    }

    open var materialVolume: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductType.materialVolume))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.materialVolume, to: DecimalValue.of(optional: value))
        }
    }

    open var maximumPackagingHeight: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductType.maximumPackagingHeight))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.maximumPackagingHeight, to: DecimalValue.of(optional: value))
        }
    }

    open var maximumPackagingLength: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductType.maximumPackagingLength))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.maximumPackagingLength, to: DecimalValue.of(optional: value))
        }
    }

    open var maximumPackagingWidth: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductType.maximumPackagingWidth))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.maximumPackagingWidth, to: DecimalValue.of(optional: value))
        }
    }

    open var netWeight: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: AProductType.netWeight))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.netWeight, to: DecimalValue.of(optional: value))
        }
    }

    open var old: AProductType {
        return CastRequired<AProductType>.from(self.oldEntity)
    }

    open var preferredUnitOfMeasure: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.preferredUnitOfMeasure))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.preferredUnitOfMeasure, to: StringValue.of(optional: value))
        }
    }

    open var procurementRule: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.procurementRule))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.procurementRule, to: StringValue.of(optional: value))
        }
    }

    open var prodNoInGenProdInPrepackProd: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.prodNoInGenProdInPrepackProd))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.prodNoInGenProdInPrepackProd, to: StringValue.of(optional: value))
        }
    }

    open var product: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.product))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.product, to: StringValue.of(optional: value))
        }
    }

    open var productGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.productGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.productGroup, to: StringValue.of(optional: value))
        }
    }

    open var productHierarchy: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.productHierarchy))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.productHierarchy, to: StringValue.of(optional: value))
        }
    }

    open var productIsConfigurable: Bool? {
        get {
            return BooleanValue.optional(self.optionalValue(for: AProductType.productIsConfigurable))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.productIsConfigurable, to: BooleanValue.of(optional: value))
        }
    }

    open var productManufacturerNumber: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.productManufacturerNumber))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.productManufacturerNumber, to: StringValue.of(optional: value))
        }
    }

    open var productOldID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.productOldID))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.productOldID, to: StringValue.of(optional: value))
        }
    }

    open var productStandardID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.productStandardID))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.productStandardID, to: StringValue.of(optional: value))
        }
    }

    open var productType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.productType))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.productType, to: StringValue.of(optional: value))
        }
    }

    open var purchaseOrderQuantityUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.purchaseOrderQuantityUnit))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.purchaseOrderQuantityUnit, to: StringValue.of(optional: value))
        }
    }

    open var qualityInspectionGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.qualityInspectionGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.qualityInspectionGroup, to: StringValue.of(optional: value))
        }
    }

    open var quarantinePeriod: BigInteger? {
        get {
            return IntegerValue.optional(self.optionalValue(for: AProductType.quarantinePeriod))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.quarantinePeriod, to: IntegerValue.of(optional: value))
        }
    }

    open var serialIdentifierAssgmtProfile: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.serialIdentifierAssgmtProfile))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.serialIdentifierAssgmtProfile, to: StringValue.of(optional: value))
        }
    }

    open var serialNoExplicitnessLevel: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.serialNoExplicitnessLevel))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.serialNoExplicitnessLevel, to: StringValue.of(optional: value))
        }
    }

    open var serialNumberProfile: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.serialNumberProfile))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.serialNumberProfile, to: StringValue.of(optional: value))
        }
    }

    open var sizeOrDimensionText: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.sizeOrDimensionText))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.sizeOrDimensionText, to: StringValue.of(optional: value))
        }
    }

    open var sourceOfSupply: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.sourceOfSupply))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.sourceOfSupply, to: StringValue.of(optional: value))
        }
    }

    open var standardHandlingUnitType: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.standardHandlingUnitType))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.standardHandlingUnitType, to: StringValue.of(optional: value))
        }
    }

    open var timeUnitForQuarantinePeriod: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.timeUnitForQuarantinePeriod))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.timeUnitForQuarantinePeriod, to: StringValue.of(optional: value))
        }
    }

    open var toDescription: Array<AProductDescriptionType> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: AProductType.toDescription)).toArray(), Array<AProductDescriptionType>())
        }
        set(value) {
            AProductType.toDescription.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open var toPlant: Array<AProductPlantType> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: AProductType.toPlant)).toArray(), Array<AProductPlantType>())
        }
        set(value) {
            AProductType.toPlant.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open var toProductSalesTax: Array<AProductSalesTaxType> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: AProductType.toProductSalesTax)).toArray(), Array<AProductSalesTaxType>())
        }
        set(value) {
            AProductType.toProductSalesTax.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open var toSalesDelivery: Array<AProductSalesDeliveryType> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: AProductType.toSalesDelivery)).toArray(), Array<AProductSalesDeliveryType>())
        }
        set(value) {
            AProductType.toSalesDelivery.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open var validityStartDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: AProductType.validityStartDate))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.validityStartDate, to: value)
        }
    }

    open var varblPurOrdUnitIsActive: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.varblPurOrdUnitIsActive))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.varblPurOrdUnitIsActive, to: StringValue.of(optional: value))
        }
    }

    open var volumeUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.volumeUnit))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.volumeUnit, to: StringValue.of(optional: value))
        }
    }

    open var warehouseProductGroup: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.warehouseProductGroup))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.warehouseProductGroup, to: StringValue.of(optional: value))
        }
    }

    open var warehouseStorageCondition: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.warehouseStorageCondition))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.warehouseStorageCondition, to: StringValue.of(optional: value))
        }
    }

    open var weightUnit: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.weightUnit))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.weightUnit, to: StringValue.of(optional: value))
        }
    }

    open var yy1CorningexamplePRD: String? {
        get {
            return StringValue.optional(self.optionalValue(for: AProductType.yy1CorningexamplePRD))
        }
        set(value) {
            self.setOptionalValue(for: AProductType.yy1CorningexamplePRD, to: StringValue.of(optional: value))
        }
    }
}
