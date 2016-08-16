//
//  EBD.swift					 // Excess Baggage Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class EBD: Segment
{
	var excessBaggageDetails_C674: C674
	var baggageDetails_C675: C675
	var baggage2Details_C675: C675
	var baggage3Details_C675: C675
	var bagtagDetails_C358: [C358]
	var configurationDetails_C048: [C048]
	var equipmentCode_7800: C000
	var aircraftCabinVersionIdentification_9866: C000
	var freeText_4440: C000
	var carrierIdentification_3127: C000
	var freeText1_4440: C000
	var equipmentQualifier_8053: C000
	var equipmentIdentification_C237: C237
	var equipmentSizeAndType_C224: C224
	var equipmentSupplierCoded_8077: C000
	var equipmentStatusCoded_8249: C000
	var fullemptyIndicatorCoded_8169: C000
	var configurationDetails1_C048: [C048]
	var typeOfMeansOfTransportIdentification_8179: C000
	var additionalEquipmentInformation_C361: C361
	var freeText2_4440: C000


init(excessBaggageDetails_C674: C674,
	baggageDetails_C675: C675,
	baggage2Details_C675: C675,
	baggage3Details_C675: C675,
	bagtagDetails_C358: [C358] = [],
	configurationDetails_C048: [C048] = [],
	equipmentCode_7800: C000,
	aircraftCabinVersionIdentification_9866: C000,
	freeText_4440: C000,
	carrierIdentification_3127: C000,
	freeText1_4440: C000,
	equipmentQualifier_8053: C000,
	equipmentIdentification_C237: C237,
	equipmentSizeAndType_C224: C224,
	equipmentSupplierCoded_8077: C000,
	equipmentStatusCoded_8249: C000,
	fullemptyIndicatorCoded_8169: C000,
	configurationDetails1_C048: [C048] = [],
	typeOfMeansOfTransportIdentification_8179: C000,
	additionalEquipmentInformation_C361: C361,
	freeText2_4440: C000) {

	self.excessBaggageDetails_C674 = excessBaggageDetails_C674
	self.baggageDetails_C675 = baggageDetails_C675
	self.baggage2Details_C675 = baggage2Details_C675
	self.baggage3Details_C675 = baggage3Details_C675
	self.bagtagDetails_C358 = bagtagDetails_C358
	self.configurationDetails_C048 = configurationDetails_C048
	self.equipmentCode_7800 = equipmentCode_7800
	self.aircraftCabinVersionIdentification_9866 = aircraftCabinVersionIdentification_9866
	self.freeText_4440 = freeText_4440
	self.carrierIdentification_3127 = carrierIdentification_3127
	self.freeText1_4440 = freeText1_4440
	self.equipmentQualifier_8053 = equipmentQualifier_8053
	self.equipmentIdentification_C237 = equipmentIdentification_C237
	self.equipmentSizeAndType_C224 = equipmentSizeAndType_C224
	self.equipmentSupplierCoded_8077 = equipmentSupplierCoded_8077
	self.equipmentStatusCoded_8249 = equipmentStatusCoded_8249
	self.fullemptyIndicatorCoded_8169 = fullemptyIndicatorCoded_8169
	self.configurationDetails1_C048 = configurationDetails1_C048
	self.typeOfMeansOfTransportIdentification_8179 = typeOfMeansOfTransportIdentification_8179
	self.additionalEquipmentInformation_C361 = additionalEquipmentInformation_C361
	self.freeText2_4440 = freeText2_4440

	}

func description () -> String {

	var descText = "EBD+"
		descEDISeg(&descText, items: excessBaggageDetails_C674)
		descEDISeg(&descText, items: baggageDetails_C675)
		descEDISeg(&descText, items: baggage2Details_C675)
		descEDISeg(&descText, items: baggage3Details_C675)
		descEDISeg(&descText, items: bagtagDetails_C358)
		descEDISeg(&descText, items: configurationDetails_C048)
		descEDISeg(&descText, items: equipmentCode_7800)
		descEDISeg(&descText, items: aircraftCabinVersionIdentification_9866)
		descEDISeg(&descText, items: freeText_4440)
		descEDISeg(&descText, items: carrierIdentification_3127)
		descEDISeg(&descText, items: freeText1_4440)
		descEDISeg(&descText, items: equipmentQualifier_8053)
		descEDISeg(&descText, items: equipmentIdentification_C237)
		descEDISeg(&descText, items: equipmentSizeAndType_C224)
		descEDISeg(&descText, items: equipmentSupplierCoded_8077)
		descEDISeg(&descText, items: equipmentStatusCoded_8249)
		descEDISeg(&descText, items: fullemptyIndicatorCoded_8169)
		descEDISeg(&descText, items: configurationDetails1_C048)
		descEDISeg(&descText, items: typeOfMeansOfTransportIdentification_8179)
		descEDISeg(&descText, items: additionalEquipmentInformation_C361)
		descEDISeg(&descText, items: freeText2_4440)

	descText.endFinal()

	return descText
}

}

