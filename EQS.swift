//
//  EQS.swift					 // Equipmentservice Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class EQS: Segment
{
	var equipmentInformation_C359: C359
	var equipmentInformation1_C359: C359
	var numberOfUnitDetails_C523: [C523]


init(equipmentInformation_C359: C359,
	equipmentInformation1_C359: C359,
	numberOfUnitDetails_C523: [C523] = []) {

	self.equipmentInformation_C359 = equipmentInformation_C359
	self.equipmentInformation1_C359 = equipmentInformation1_C359
	self.numberOfUnitDetails_C523 = numberOfUnitDetails_C523

	}

func description () -> String {

	var descText = "EQS+"
		descEDISeg(&descText, items: equipmentInformation_C359)
		descEDISeg(&descText, items: equipmentInformation1_C359)
		descEDISeg(&descText, items: numberOfUnitDetails_C523)

	descText.endFinal()

	return descText
}

}

