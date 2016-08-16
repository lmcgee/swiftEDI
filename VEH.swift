//
//  VEH.swift					 // Vehicle 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class VEH: Segment
{
	var equipmentQualifier_8053: C000
	var vehicleInformation_C991: C991
	var dimensions_C211: C211
	var measurementValue_6314: C000
	var position_C992: C992
	var travellerReferenceNumber_9944: C000


init(equipmentQualifier_8053: C000,
	vehicleInformation_C991: C991,
	dimensions_C211: C211,
	measurementValue_6314: C000,
	position_C992: C992,
	travellerReferenceNumber_9944: C000) {

	self.equipmentQualifier_8053 = equipmentQualifier_8053
	self.vehicleInformation_C991 = vehicleInformation_C991
	self.dimensions_C211 = dimensions_C211
	self.measurementValue_6314 = measurementValue_6314
	self.position_C992 = position_C992
	self.travellerReferenceNumber_9944 = travellerReferenceNumber_9944

	}

func description () -> String {

	var descText = "VEH+"
		descEDISeg(&descText, items: equipmentQualifier_8053)
		descEDISeg(&descText, items: vehicleInformation_C991)
		descEDISeg(&descText, items: dimensions_C211)
		descEDISeg(&descText, items: measurementValue_6314)
		descEDISeg(&descText, items: position_C992)
		descEDISeg(&descText, items: travellerReferenceNumber_9944)

	descText.endFinal()

	return descText
}

}

