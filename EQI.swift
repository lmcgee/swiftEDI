//
//  EQI.swift					 // Equipment Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class EQI: Segment
{
	var configurationDetails_C048: [C048]
	var typeOfMeansOfTransportIdentification_8179: C000
	var additionalEquipmentInformation_C361: C361
	var freeText_4440: C000


init(configurationDetails_C048: [C048] = [],
	typeOfMeansOfTransportIdentification_8179: C000,
	additionalEquipmentInformation_C361: C361,
	freeText_4440: C000) {

	self.configurationDetails_C048 = configurationDetails_C048
	self.typeOfMeansOfTransportIdentification_8179 = typeOfMeansOfTransportIdentification_8179
	self.additionalEquipmentInformation_C361 = additionalEquipmentInformation_C361
	self.freeText_4440 = freeText_4440

	}

func description () -> String {

	var descText = "EQI+"
		descEDISeg(&descText, items: configurationDetails_C048)
		descEDISeg(&descText, items: typeOfMeansOfTransportIdentification_8179)
		descEDISeg(&descText, items: additionalEquipmentInformation_C361)
		descEDISeg(&descText, items: freeText_4440)

	descText.endFinal()

	return descText
}

}

