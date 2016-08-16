//
//  EQD.swift					 // Equipment Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class EQD: Segment
{
	var configurationDetails_C048: [C048]
	var equipmentCode_7800: C000
	var aircraftCabinVersionIdentification_9866: C000
	var freeText_4440: C000
	var carrierIdentification_3127: C000
	var freeText_4440: C000


init(configurationDetails_C048: [C048] = [],
	equipmentCode_7800: C000,
	aircraftCabinVersionIdentification_9866: C000,
	freeText_4440: C000,
	carrierIdentification_3127: C000,
	freeText_4440: C000) {

	self.configurationDetails_C048 = configurationDetails_C048
	self.equipmentCode_7800 = equipmentCode_7800
	self.aircraftCabinVersionIdentification_9866 = aircraftCabinVersionIdentification_9866
	self.freeText_4440 = freeText_4440
	self.carrierIdentification_3127 = carrierIdentification_3127
	self.freeText_4440 = freeText_4440

	}

func description () -> String {

	var descText = "EQD+"
		descEDISeg(&descText, items: configurationDetails_C048)
		descEDISeg(&descText, items: equipmentCode_7800)
		descEDISeg(&descText, items: aircraftCabinVersionIdentification_9866)
		descEDISeg(&descText, items: freeText_4440)
		descEDISeg(&descText, items: carrierIdentification_3127)
		descEDISeg(&descText, items: freeText_4440)

	descText.endFinal()

	return descText
}

}

