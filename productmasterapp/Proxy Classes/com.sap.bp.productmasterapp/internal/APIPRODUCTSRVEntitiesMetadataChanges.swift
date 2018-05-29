// # Proxy Compiler 17.12.1-7fb011-20180122

import Foundation
import SAPOData

internal class APIPRODUCTSRVEntitiesMetadataChanges: ObjectBase {
    override init() {
    }

    class func merge(metadata: CSDLDocument) {
        metadata.hasGeneratedProxies = true
        APIPRODUCTSRVEntitiesMetadata.document = metadata
        APIPRODUCTSRVEntitiesMetadataChanges.merge1(metadata: metadata)
        try! APIPRODUCTSRVEntitiesFactory.registerAll()
    }

    private class func merge1(metadata: CSDLDocument) {
        Ignore.valueOf_any(metadata)
        if !APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType = metadata.entityType(withName: "API_PRODUCT_SRV.A_ProductDescriptionType")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType = metadata.entityType(withName: "API_PRODUCT_SRV.A_ProductPlantProcurementType")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType = metadata.entityType(withName: "API_PRODUCT_SRV.A_ProductPlantType")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType = metadata.entityType(withName: "API_PRODUCT_SRV.A_ProductSalesDeliveryType")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTaxType.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTaxType = metadata.entityType(withName: "API_PRODUCT_SRV.A_ProductSalesTaxType")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType = metadata.entityType(withName: "API_PRODUCT_SRV.A_ProductStorageLocationType")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType = metadata.entityType(withName: "API_PRODUCT_SRV.A_ProductSupplyPlanningType")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType = metadata.entityType(withName: "API_PRODUCT_SRV.A_ProductType")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType = metadata.entityType(withName: "API_PRODUCT_SRV.A_ProductWorkSchedulingType")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProduct.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProduct = metadata.entitySet(withName: "A_Product")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductDescription.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductDescription = metadata.entitySet(withName: "A_ProductDescription")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlant.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlant = metadata.entitySet(withName: "A_ProductPlant")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantProcurement.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductPlantProcurement = metadata.entitySet(withName: "A_ProductPlantProcurement")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesDelivery.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesDelivery = metadata.entitySet(withName: "A_ProductSalesDelivery")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesTax.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSalesTax = metadata.entitySet(withName: "A_ProductSalesTax")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductStorageLocation.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductStorageLocation = metadata.entitySet(withName: "A_ProductStorageLocation")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSupplyPlanning.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductSupplyPlanning = metadata.entitySet(withName: "A_ProductSupplyPlanning")
        }
        if !APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductWorkScheduling.isRemoved {
            APIPRODUCTSRVEntitiesMetadata.EntitySets.aProductWorkScheduling = metadata.entitySet(withName: "A_ProductWorkScheduling")
        }
        if !AProductDescriptionType.product.isRemoved {
            AProductDescriptionType.product = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.property(withName: "Product")
        }
        if !AProductDescriptionType.language.isRemoved {
            AProductDescriptionType.language = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.property(withName: "Language")
        }
        if !AProductDescriptionType.productDescription.isRemoved {
            AProductDescriptionType.productDescription = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductDescriptionType.property(withName: "ProductDescription")
        }
        if !AProductPlantProcurementType.product.isRemoved {
            AProductPlantProcurementType.product = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType.property(withName: "Product")
        }
        if !AProductPlantProcurementType.plant.isRemoved {
            AProductPlantProcurementType.plant = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType.property(withName: "Plant")
        }
        if !AProductPlantProcurementType.isAutoPurOrdCreationAllowed.isRemoved {
            AProductPlantProcurementType.isAutoPurOrdCreationAllowed = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType.property(withName: "IsAutoPurOrdCreationAllowed")
        }
        if !AProductPlantProcurementType.isSourceListRequired.isRemoved {
            AProductPlantProcurementType.isSourceListRequired = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType.property(withName: "IsSourceListRequired")
        }
        if !AProductPlantProcurementType.sourceOfSupplyCategory.isRemoved {
            AProductPlantProcurementType.sourceOfSupplyCategory = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantProcurementType.property(withName: "SourceOfSupplyCategory")
        }
        if !AProductPlantType.product.isRemoved {
            AProductPlantType.product = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "Product")
        }
        if !AProductPlantType.plant.isRemoved {
            AProductPlantType.plant = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "Plant")
        }
        if !AProductPlantType.purchasingGroup.isRemoved {
            AProductPlantType.purchasingGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "PurchasingGroup")
        }
        if !AProductPlantType.countryOfOrigin.isRemoved {
            AProductPlantType.countryOfOrigin = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "CountryOfOrigin")
        }
        if !AProductPlantType.regionOfOrigin.isRemoved {
            AProductPlantType.regionOfOrigin = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "RegionOfOrigin")
        }
        if !AProductPlantType.productionInvtryManagedLoc.isRemoved {
            AProductPlantType.productionInvtryManagedLoc = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProductionInvtryManagedLoc")
        }
        if !AProductPlantType.profileCode.isRemoved {
            AProductPlantType.profileCode = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProfileCode")
        }
        if !AProductPlantType.profileValidityStartDate.isRemoved {
            AProductPlantType.profileValidityStartDate = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProfileValidityStartDate")
        }
        if !AProductPlantType.availabilityCheckType.isRemoved {
            AProductPlantType.availabilityCheckType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "AvailabilityCheckType")
        }
        if !AProductPlantType.fiscalYearVariant.isRemoved {
            AProductPlantType.fiscalYearVariant = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FiscalYearVariant")
        }
        if !AProductPlantType.periodType.isRemoved {
            AProductPlantType.periodType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "PeriodType")
        }
        if !AProductPlantType.profitCenter.isRemoved {
            AProductPlantType.profitCenter = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProfitCenter")
        }
        if !AProductPlantType.commodity.isRemoved {
            AProductPlantType.commodity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "Commodity")
        }
        if !AProductPlantType.goodsReceiptDuration.isRemoved {
            AProductPlantType.goodsReceiptDuration = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "GoodsReceiptDuration")
        }
        if !AProductPlantType.maintenanceStatusName.isRemoved {
            AProductPlantType.maintenanceStatusName = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MaintenanceStatusName")
        }
        if !AProductPlantType.isMarkedForDeletion.isRemoved {
            AProductPlantType.isMarkedForDeletion = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsMarkedForDeletion")
        }
        if !AProductPlantType.mrpType.isRemoved {
            AProductPlantType.mrpType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MRPType")
        }
        if !AProductPlantType.mrpResponsible.isRemoved {
            AProductPlantType.mrpResponsible = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MRPResponsible")
        }
        if !AProductPlantType.abcIndicator.isRemoved {
            AProductPlantType.abcIndicator = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ABCIndicator")
        }
        if !AProductPlantType.minimumLotSizeQuantity.isRemoved {
            AProductPlantType.minimumLotSizeQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MinimumLotSizeQuantity")
        }
        if !AProductPlantType.maximumLotSizeQuantity.isRemoved {
            AProductPlantType.maximumLotSizeQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "MaximumLotSizeQuantity")
        }
        if !AProductPlantType.fixedLotSizeQuantity.isRemoved {
            AProductPlantType.fixedLotSizeQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FixedLotSizeQuantity")
        }
        if !AProductPlantType.consumptionTaxCtrlCode.isRemoved {
            AProductPlantType.consumptionTaxCtrlCode = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ConsumptionTaxCtrlCode")
        }
        if !AProductPlantType.isCoProduct.isRemoved {
            AProductPlantType.isCoProduct = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsCoProduct")
        }
        if !AProductPlantType.productIsConfigurable.isRemoved {
            AProductPlantType.productIsConfigurable = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProductIsConfigurable")
        }
        if !AProductPlantType.stockDeterminationGroup.isRemoved {
            AProductPlantType.stockDeterminationGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "StockDeterminationGroup")
        }
        if !AProductPlantType.stockInTransferQuantity.isRemoved {
            AProductPlantType.stockInTransferQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "StockInTransferQuantity")
        }
        if !AProductPlantType.stockInTransitQuantity.isRemoved {
            AProductPlantType.stockInTransitQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "StockInTransitQuantity")
        }
        if !AProductPlantType.hasPostToInspectionStock.isRemoved {
            AProductPlantType.hasPostToInspectionStock = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "HasPostToInspectionStock")
        }
        if !AProductPlantType.isBatchManagementRequired.isRemoved {
            AProductPlantType.isBatchManagementRequired = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsBatchManagementRequired")
        }
        if !AProductPlantType.serialNumberProfile.isRemoved {
            AProductPlantType.serialNumberProfile = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "SerialNumberProfile")
        }
        if !AProductPlantType.isNegativeStockAllowed.isRemoved {
            AProductPlantType.isNegativeStockAllowed = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsNegativeStockAllowed")
        }
        if !AProductPlantType.goodsReceiptBlockedStockQty.isRemoved {
            AProductPlantType.goodsReceiptBlockedStockQty = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "GoodsReceiptBlockedStockQty")
        }
        if !AProductPlantType.hasConsignmentCtrl.isRemoved {
            AProductPlantType.hasConsignmentCtrl = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "HasConsignmentCtrl")
        }
        if !AProductPlantType.fiscalYearCurrentPeriod.isRemoved {
            AProductPlantType.fiscalYearCurrentPeriod = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FiscalYearCurrentPeriod")
        }
        if !AProductPlantType.fiscalMonthCurrentPeriod.isRemoved {
            AProductPlantType.fiscalMonthCurrentPeriod = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "FiscalMonthCurrentPeriod")
        }
        if !AProductPlantType.procurementType.isRemoved {
            AProductPlantType.procurementType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProcurementType")
        }
        if !AProductPlantType.isInternalBatchManaged.isRemoved {
            AProductPlantType.isInternalBatchManaged = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "IsInternalBatchManaged")
        }
        if !AProductPlantType.productCFOPCategory.isRemoved {
            AProductPlantType.productCFOPCategory = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "ProductCFOPCategory")
        }
        if !AProductPlantType.toProductPlantProcurement.isRemoved {
            AProductPlantType.toProductPlantProcurement = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductPlantProcurement")
        }
        if !AProductPlantType.toProductSupplyPlanning.isRemoved {
            AProductPlantType.toProductSupplyPlanning = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductSupplyPlanning")
        }
        if !AProductPlantType.toProductWorkScheduling.isRemoved {
            AProductPlantType.toProductWorkScheduling = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_ProductWorkScheduling")
        }
        if !AProductPlantType.toStorageLocation.isRemoved {
            AProductPlantType.toStorageLocation = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductPlantType.property(withName: "to_StorageLocation")
        }
        if !AProductSalesDeliveryType.product.isRemoved {
            AProductSalesDeliveryType.product = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "Product")
        }
        if !AProductSalesDeliveryType.productSalesOrg.isRemoved {
            AProductSalesDeliveryType.productSalesOrg = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductSalesOrg")
        }
        if !AProductSalesDeliveryType.productDistributionChnl.isRemoved {
            AProductSalesDeliveryType.productDistributionChnl = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductDistributionChnl")
        }
        if !AProductSalesDeliveryType.minimumOrderQuantity.isRemoved {
            AProductSalesDeliveryType.minimumOrderQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "MinimumOrderQuantity")
        }
        if !AProductSalesDeliveryType.supplyingPlant.isRemoved {
            AProductSalesDeliveryType.supplyingPlant = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "SupplyingPlant")
        }
        if !AProductSalesDeliveryType.priceSpecificationProductGroup.isRemoved {
            AProductSalesDeliveryType.priceSpecificationProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "PriceSpecificationProductGroup")
        }
        if !AProductSalesDeliveryType.accountDetnProductGroup.isRemoved {
            AProductSalesDeliveryType.accountDetnProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "AccountDetnProductGroup")
        }
        if !AProductSalesDeliveryType.deliveryNoteProcMinDelivQty.isRemoved {
            AProductSalesDeliveryType.deliveryNoteProcMinDelivQty = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "DeliveryNoteProcMinDelivQty")
        }
        if !AProductSalesDeliveryType.itemCategoryGroup.isRemoved {
            AProductSalesDeliveryType.itemCategoryGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ItemCategoryGroup")
        }
        if !AProductSalesDeliveryType.deliveryQuantityUnit.isRemoved {
            AProductSalesDeliveryType.deliveryQuantityUnit = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "DeliveryQuantityUnit")
        }
        if !AProductSalesDeliveryType.deliveryQuantity.isRemoved {
            AProductSalesDeliveryType.deliveryQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "DeliveryQuantity")
        }
        if !AProductSalesDeliveryType.productSalesStatus.isRemoved {
            AProductSalesDeliveryType.productSalesStatus = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductSalesStatus")
        }
        if !AProductSalesDeliveryType.productSalesStatusValidityDate.isRemoved {
            AProductSalesDeliveryType.productSalesStatusValidityDate = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductSalesStatusValidityDate")
        }
        if !AProductSalesDeliveryType.salesMeasureUnit.isRemoved {
            AProductSalesDeliveryType.salesMeasureUnit = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "SalesMeasureUnit")
        }
        if !AProductSalesDeliveryType.isMarkedForDeletion.isRemoved {
            AProductSalesDeliveryType.isMarkedForDeletion = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "IsMarkedForDeletion")
        }
        if !AProductSalesDeliveryType.productHierarchy.isRemoved {
            AProductSalesDeliveryType.productHierarchy = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ProductHierarchy")
        }
        if !AProductSalesDeliveryType.firstSalesSpecProductGroup.isRemoved {
            AProductSalesDeliveryType.firstSalesSpecProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "FirstSalesSpecProductGroup")
        }
        if !AProductSalesDeliveryType.secondSalesSpecProductGroup.isRemoved {
            AProductSalesDeliveryType.secondSalesSpecProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "SecondSalesSpecProductGroup")
        }
        if !AProductSalesDeliveryType.thirdSalesSpecProductGroup.isRemoved {
            AProductSalesDeliveryType.thirdSalesSpecProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "ThirdSalesSpecProductGroup")
        }
        if !AProductSalesDeliveryType.fourthSalesSpecProductGroup.isRemoved {
            AProductSalesDeliveryType.fourthSalesSpecProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "FourthSalesSpecProductGroup")
        }
        if !AProductSalesDeliveryType.fifthSalesSpecProductGroup.isRemoved {
            AProductSalesDeliveryType.fifthSalesSpecProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "FifthSalesSpecProductGroup")
        }
        if !AProductSalesDeliveryType.minimumMakeToOrderOrderQty.isRemoved {
            AProductSalesDeliveryType.minimumMakeToOrderOrderQty = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesDeliveryType.property(withName: "MinimumMakeToOrderOrderQty")
        }
        if !AProductSalesTaxType.product.isRemoved {
            AProductSalesTaxType.product = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTaxType.property(withName: "Product")
        }
        if !AProductSalesTaxType.country.isRemoved {
            AProductSalesTaxType.country = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTaxType.property(withName: "Country")
        }
        if !AProductSalesTaxType.taxCategory.isRemoved {
            AProductSalesTaxType.taxCategory = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTaxType.property(withName: "TaxCategory")
        }
        if !AProductSalesTaxType.taxClassification.isRemoved {
            AProductSalesTaxType.taxClassification = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSalesTaxType.property(withName: "TaxClassification")
        }
        if !AProductStorageLocationType.product.isRemoved {
            AProductStorageLocationType.product = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "Product")
        }
        if !AProductStorageLocationType.plant.isRemoved {
            AProductStorageLocationType.plant = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "Plant")
        }
        if !AProductStorageLocationType.storageLocation.isRemoved {
            AProductStorageLocationType.storageLocation = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "StorageLocation")
        }
        if !AProductStorageLocationType.warehouseStorageBin.isRemoved {
            AProductStorageLocationType.warehouseStorageBin = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "WarehouseStorageBin")
        }
        if !AProductStorageLocationType.maintenanceStatus.isRemoved {
            AProductStorageLocationType.maintenanceStatus = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "MaintenanceStatus")
        }
        if !AProductStorageLocationType.physicalInventoryBlockInd.isRemoved {
            AProductStorageLocationType.physicalInventoryBlockInd = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "PhysicalInventoryBlockInd")
        }
        if !AProductStorageLocationType.creationDate.isRemoved {
            AProductStorageLocationType.creationDate = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "CreationDate")
        }
        if !AProductStorageLocationType.isMarkedForDeletion.isRemoved {
            AProductStorageLocationType.isMarkedForDeletion = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "IsMarkedForDeletion")
        }
        if !AProductStorageLocationType.dateOfLastPostedCntUnRstrcdStk.isRemoved {
            AProductStorageLocationType.dateOfLastPostedCntUnRstrcdStk = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "DateOfLastPostedCntUnRstrcdStk")
        }
        if !AProductStorageLocationType.inventoryCorrectionFactor.isRemoved {
            AProductStorageLocationType.inventoryCorrectionFactor = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InventoryCorrectionFactor")
        }
        if !AProductStorageLocationType.invtryRestrictedUseStockInd.isRemoved {
            AProductStorageLocationType.invtryRestrictedUseStockInd = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InvtryRestrictedUseStockInd")
        }
        if !AProductStorageLocationType.invtryCurrentYearStockInd.isRemoved {
            AProductStorageLocationType.invtryCurrentYearStockInd = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InvtryCurrentYearStockInd")
        }
        if !AProductStorageLocationType.invtryQualInspCurrentYrStkInd.isRemoved {
            AProductStorageLocationType.invtryQualInspCurrentYrStkInd = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InvtryQualInspCurrentYrStkInd")
        }
        if !AProductStorageLocationType.inventoryBlockStockInd.isRemoved {
            AProductStorageLocationType.inventoryBlockStockInd = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InventoryBlockStockInd")
        }
        if !AProductStorageLocationType.invtryRestStockPrevPeriodInd.isRemoved {
            AProductStorageLocationType.invtryRestStockPrevPeriodInd = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InvtryRestStockPrevPeriodInd")
        }
        if !AProductStorageLocationType.inventoryStockPrevPeriod.isRemoved {
            AProductStorageLocationType.inventoryStockPrevPeriod = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InventoryStockPrevPeriod")
        }
        if !AProductStorageLocationType.invtryStockQltyInspPrevPeriod.isRemoved {
            AProductStorageLocationType.invtryStockQltyInspPrevPeriod = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "InvtryStockQltyInspPrevPeriod")
        }
        if !AProductStorageLocationType.hasInvtryBlockStockPrevPeriod.isRemoved {
            AProductStorageLocationType.hasInvtryBlockStockPrevPeriod = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "HasInvtryBlockStockPrevPeriod")
        }
        if !AProductStorageLocationType.fiscalYearCurrentPeriod.isRemoved {
            AProductStorageLocationType.fiscalYearCurrentPeriod = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "FiscalYearCurrentPeriod")
        }
        if !AProductStorageLocationType.fiscalMonthCurrentPeriod.isRemoved {
            AProductStorageLocationType.fiscalMonthCurrentPeriod = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "FiscalMonthCurrentPeriod")
        }
        if !AProductStorageLocationType.fiscalYearCurrentInvtryPeriod.isRemoved {
            AProductStorageLocationType.fiscalYearCurrentInvtryPeriod = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductStorageLocationType.property(withName: "FiscalYearCurrentInvtryPeriod")
        }
        if !AProductSupplyPlanningType.product.isRemoved {
            AProductSupplyPlanningType.product = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "Product")
        }
        if !AProductSupplyPlanningType.plant.isRemoved {
            AProductSupplyPlanningType.plant = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "Plant")
        }
        if !AProductSupplyPlanningType.fixedLotSizeQuantity.isRemoved {
            AProductSupplyPlanningType.fixedLotSizeQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "FixedLotSizeQuantity")
        }
        if !AProductSupplyPlanningType.maximumLotSizeQuantity.isRemoved {
            AProductSupplyPlanningType.maximumLotSizeQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "MaximumLotSizeQuantity")
        }
        if !AProductSupplyPlanningType.minimumLotSizeQuantity.isRemoved {
            AProductSupplyPlanningType.minimumLotSizeQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "MinimumLotSizeQuantity")
        }
        if !AProductSupplyPlanningType.lotSizeRoundingQuantity.isRemoved {
            AProductSupplyPlanningType.lotSizeRoundingQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "LotSizeRoundingQuantity")
        }
        if !AProductSupplyPlanningType.lotSizingProcedure.isRemoved {
            AProductSupplyPlanningType.lotSizingProcedure = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "LotSizingProcedure")
        }
        if !AProductSupplyPlanningType.mrpType.isRemoved {
            AProductSupplyPlanningType.mrpType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "MRPType")
        }
        if !AProductSupplyPlanningType.mrpResponsible.isRemoved {
            AProductSupplyPlanningType.mrpResponsible = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "MRPResponsible")
        }
        if !AProductSupplyPlanningType.safetyStockQuantity.isRemoved {
            AProductSupplyPlanningType.safetyStockQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "SafetyStockQuantity")
        }
        if !AProductSupplyPlanningType.minimumSafetyStockQuantity.isRemoved {
            AProductSupplyPlanningType.minimumSafetyStockQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "MinimumSafetyStockQuantity")
        }
        if !AProductSupplyPlanningType.planningTimeFence.isRemoved {
            AProductSupplyPlanningType.planningTimeFence = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "PlanningTimeFence")
        }
        if !AProductSupplyPlanningType.abcIndicator.isRemoved {
            AProductSupplyPlanningType.abcIndicator = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "ABCIndicator")
        }
        if !AProductSupplyPlanningType.maximumStockQuantity.isRemoved {
            AProductSupplyPlanningType.maximumStockQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "MaximumStockQuantity")
        }
        if !AProductSupplyPlanningType.reorderThresholdQuantity.isRemoved {
            AProductSupplyPlanningType.reorderThresholdQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "ReorderThresholdQuantity")
        }
        if !AProductSupplyPlanningType.plannedDeliveryDurationInDays.isRemoved {
            AProductSupplyPlanningType.plannedDeliveryDurationInDays = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "PlannedDeliveryDurationInDays")
        }
        if !AProductSupplyPlanningType.safetyDuration.isRemoved {
            AProductSupplyPlanningType.safetyDuration = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "SafetyDuration")
        }
        if !AProductSupplyPlanningType.planningStrategyGroup.isRemoved {
            AProductSupplyPlanningType.planningStrategyGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "PlanningStrategyGroup")
        }
        if !AProductSupplyPlanningType.totalReplenishmentLeadTime.isRemoved {
            AProductSupplyPlanningType.totalReplenishmentLeadTime = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "TotalReplenishmentLeadTime")
        }
        if !AProductSupplyPlanningType.procurementType.isRemoved {
            AProductSupplyPlanningType.procurementType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "ProcurementType")
        }
        if !AProductSupplyPlanningType.procurementSubType.isRemoved {
            AProductSupplyPlanningType.procurementSubType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "ProcurementSubType")
        }
        if !AProductSupplyPlanningType.assemblyScrapPercent.isRemoved {
            AProductSupplyPlanningType.assemblyScrapPercent = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "AssemblyScrapPercent")
        }
        if !AProductSupplyPlanningType.availabilityCheckType.isRemoved {
            AProductSupplyPlanningType.availabilityCheckType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "AvailabilityCheckType")
        }
        if !AProductSupplyPlanningType.goodsReceiptDuration.isRemoved {
            AProductSupplyPlanningType.goodsReceiptDuration = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductSupplyPlanningType.property(withName: "GoodsReceiptDuration")
        }
        if !AProductType.product.isRemoved {
            AProductType.product = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "Product")
        }
        if !AProductType.productType.isRemoved {
            AProductType.productType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductType")
        }
        if !AProductType.crossPlantStatus.isRemoved {
            AProductType.crossPlantStatus = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CrossPlantStatus")
        }
        if !AProductType.crossPlantStatusValidityDate.isRemoved {
            AProductType.crossPlantStatusValidityDate = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CrossPlantStatusValidityDate")
        }
        if !AProductType.creationDate.isRemoved {
            AProductType.creationDate = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CreationDate")
        }
        if !AProductType.createdByUser.isRemoved {
            AProductType.createdByUser = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CreatedByUser")
        }
        if !AProductType.lastChangeDate.isRemoved {
            AProductType.lastChangeDate = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "LastChangeDate")
        }
        if !AProductType.lastChangedByUser.isRemoved {
            AProductType.lastChangedByUser = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "LastChangedByUser")
        }
        if !AProductType.isMarkedForDeletion.isRemoved {
            AProductType.isMarkedForDeletion = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsMarkedForDeletion")
        }
        if !AProductType.productOldID.isRemoved {
            AProductType.productOldID = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductOldID")
        }
        if !AProductType.grossWeight.isRemoved {
            AProductType.grossWeight = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "GrossWeight")
        }
        if !AProductType.purchaseOrderQuantityUnit.isRemoved {
            AProductType.purchaseOrderQuantityUnit = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "PurchaseOrderQuantityUnit")
        }
        if !AProductType.sourceOfSupply.isRemoved {
            AProductType.sourceOfSupply = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SourceOfSupply")
        }
        if !AProductType.weightUnit.isRemoved {
            AProductType.weightUnit = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "WeightUnit")
        }
        if !AProductType.netWeight.isRemoved {
            AProductType.netWeight = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "NetWeight")
        }
        if !AProductType.countryOfOrigin.isRemoved {
            AProductType.countryOfOrigin = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CountryOfOrigin")
        }
        if !AProductType.competitorID.isRemoved {
            AProductType.competitorID = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CompetitorID")
        }
        if !AProductType.productGroup.isRemoved {
            AProductType.productGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductGroup")
        }
        if !AProductType.baseUnit.isRemoved {
            AProductType.baseUnit = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "BaseUnit")
        }
        if !AProductType.itemCategoryGroup.isRemoved {
            AProductType.itemCategoryGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ItemCategoryGroup")
        }
        if !AProductType.productHierarchy.isRemoved {
            AProductType.productHierarchy = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductHierarchy")
        }
        if !AProductType.division.isRemoved {
            AProductType.division = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "Division")
        }
        if !AProductType.varblPurOrdUnitIsActive.isRemoved {
            AProductType.varblPurOrdUnitIsActive = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "VarblPurOrdUnitIsActive")
        }
        if !AProductType.volumeUnit.isRemoved {
            AProductType.volumeUnit = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "VolumeUnit")
        }
        if !AProductType.materialVolume.isRemoved {
            AProductType.materialVolume = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaterialVolume")
        }
        if !AProductType.anpCode.isRemoved {
            AProductType.anpCode = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ANPCode")
        }
        if !AProductType.brand.isRemoved {
            AProductType.brand = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "Brand")
        }
        if !AProductType.procurementRule.isRemoved {
            AProductType.procurementRule = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProcurementRule")
        }
        if !AProductType.validityStartDate.isRemoved {
            AProductType.validityStartDate = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ValidityStartDate")
        }
        if !AProductType.lowLevelCode.isRemoved {
            AProductType.lowLevelCode = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "LowLevelCode")
        }
        if !AProductType.prodNoInGenProdInPrepackProd.isRemoved {
            AProductType.prodNoInGenProdInPrepackProd = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProdNoInGenProdInPrepackProd")
        }
        if !AProductType.serialIdentifierAssgmtProfile.isRemoved {
            AProductType.serialIdentifierAssgmtProfile = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SerialIdentifierAssgmtProfile")
        }
        if !AProductType.sizeOrDimensionText.isRemoved {
            AProductType.sizeOrDimensionText = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SizeOrDimensionText")
        }
        if !AProductType.industryStandardName.isRemoved {
            AProductType.industryStandardName = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IndustryStandardName")
        }
        if !AProductType.productStandardID.isRemoved {
            AProductType.productStandardID = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductStandardID")
        }
        if !AProductType.internationalArticleNumberCat.isRemoved {
            AProductType.internationalArticleNumberCat = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "InternationalArticleNumberCat")
        }
        if !AProductType.productIsConfigurable.isRemoved {
            AProductType.productIsConfigurable = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductIsConfigurable")
        }
        if !AProductType.isBatchManagementRequired.isRemoved {
            AProductType.isBatchManagementRequired = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsBatchManagementRequired")
        }
        if !AProductType.externalProductGroup.isRemoved {
            AProductType.externalProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ExternalProductGroup")
        }
        if !AProductType.crossPlantConfigurableProduct.isRemoved {
            AProductType.crossPlantConfigurableProduct = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "CrossPlantConfigurableProduct")
        }
        if !AProductType.serialNoExplicitnessLevel.isRemoved {
            AProductType.serialNoExplicitnessLevel = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SerialNoExplicitnessLevel")
        }
        if !AProductType.productManufacturerNumber.isRemoved {
            AProductType.productManufacturerNumber = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ProductManufacturerNumber")
        }
        if !AProductType.manufacturerPartProfile.isRemoved {
            AProductType.manufacturerPartProfile = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ManufacturerPartProfile")
        }
        if !AProductType.changeNumber.isRemoved {
            AProductType.changeNumber = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "ChangeNumber")
        }
        if !AProductType.materialRevisionLevel.isRemoved {
            AProductType.materialRevisionLevel = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaterialRevisionLevel")
        }
        if !AProductType.handlingIndicator.isRemoved {
            AProductType.handlingIndicator = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "HandlingIndicator")
        }
        if !AProductType.warehouseProductGroup.isRemoved {
            AProductType.warehouseProductGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "WarehouseProductGroup")
        }
        if !AProductType.warehouseStorageCondition.isRemoved {
            AProductType.warehouseStorageCondition = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "WarehouseStorageCondition")
        }
        if !AProductType.standardHandlingUnitType.isRemoved {
            AProductType.standardHandlingUnitType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "StandardHandlingUnitType")
        }
        if !AProductType.serialNumberProfile.isRemoved {
            AProductType.serialNumberProfile = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "SerialNumberProfile")
        }
        if !AProductType.adjustmentProfile.isRemoved {
            AProductType.adjustmentProfile = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "AdjustmentProfile")
        }
        if !AProductType.preferredUnitOfMeasure.isRemoved {
            AProductType.preferredUnitOfMeasure = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "PreferredUnitOfMeasure")
        }
        if !AProductType.isPilferable.isRemoved {
            AProductType.isPilferable = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsPilferable")
        }
        if !AProductType.isRelevantForHzdsSubstances.isRemoved {
            AProductType.isRelevantForHzdsSubstances = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "IsRelevantForHzdsSubstances")
        }
        if !AProductType.quarantinePeriod.isRemoved {
            AProductType.quarantinePeriod = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "QuarantinePeriod")
        }
        if !AProductType.timeUnitForQuarantinePeriod.isRemoved {
            AProductType.timeUnitForQuarantinePeriod = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "TimeUnitForQuarantinePeriod")
        }
        if !AProductType.qualityInspectionGroup.isRemoved {
            AProductType.qualityInspectionGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "QualityInspectionGroup")
        }
        if !AProductType.authorizationGroup.isRemoved {
            AProductType.authorizationGroup = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "AuthorizationGroup")
        }
        if !AProductType.handlingUnitType.isRemoved {
            AProductType.handlingUnitType = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "HandlingUnitType")
        }
        if !AProductType.hasVariableTareWeight.isRemoved {
            AProductType.hasVariableTareWeight = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "HasVariableTareWeight")
        }
        if !AProductType.maximumPackagingLength.isRemoved {
            AProductType.maximumPackagingLength = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaximumPackagingLength")
        }
        if !AProductType.maximumPackagingWidth.isRemoved {
            AProductType.maximumPackagingWidth = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaximumPackagingWidth")
        }
        if !AProductType.maximumPackagingHeight.isRemoved {
            AProductType.maximumPackagingHeight = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "MaximumPackagingHeight")
        }
        if !AProductType.yy1CorningexamplePRD.isRemoved {
            AProductType.yy1CorningexamplePRD = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "YY1_Corningexample_PRD")
        }
        if !AProductType.toDescription.isRemoved {
            AProductType.toDescription = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_Description")
        }
        if !AProductType.toPlant.isRemoved {
            AProductType.toPlant = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_Plant")
        }
        if !AProductType.toProductSalesTax.isRemoved {
            AProductType.toProductSalesTax = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_ProductSalesTax")
        }
        if !AProductType.toSalesDelivery.isRemoved {
            AProductType.toSalesDelivery = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductType.property(withName: "to_SalesDelivery")
        }
        if !AProductWorkSchedulingType.product.isRemoved {
            AProductWorkSchedulingType.product = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.property(withName: "Product")
        }
        if !AProductWorkSchedulingType.plant.isRemoved {
            AProductWorkSchedulingType.plant = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.property(withName: "Plant")
        }
        if !AProductWorkSchedulingType.materialBaseQuantity.isRemoved {
            AProductWorkSchedulingType.materialBaseQuantity = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.property(withName: "MaterialBaseQuantity")
        }
        if !AProductWorkSchedulingType.unlimitedOverDelivIsAllowed.isRemoved {
            AProductWorkSchedulingType.unlimitedOverDelivIsAllowed = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.property(withName: "UnlimitedOverDelivIsAllowed")
        }
        if !AProductWorkSchedulingType.overDelivToleranceLimit.isRemoved {
            AProductWorkSchedulingType.overDelivToleranceLimit = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.property(withName: "OverDelivToleranceLimit")
        }
        if !AProductWorkSchedulingType.underDelivToleranceLimit.isRemoved {
            AProductWorkSchedulingType.underDelivToleranceLimit = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.property(withName: "UnderDelivToleranceLimit")
        }
        if !AProductWorkSchedulingType.productionInvtryManagedLoc.isRemoved {
            AProductWorkSchedulingType.productionInvtryManagedLoc = APIPRODUCTSRVEntitiesMetadata.EntityTypes.aProductWorkSchedulingType.property(withName: "ProductionInvtryManagedLoc")
        }
    }
}
