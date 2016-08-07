//
//  C361.swift					 // AdditionalEquipmentInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C361: Composite {			// AdditionalEquipmentInformation

	var aircraftCabinVersionIdentification1_9866: String = "" 
	var aircraftCabinVersionIdentification2_9866: String = "" 
	var companyIdentification_9906: String = "" 
	var equipmentIdentificationNumber_8260: String = "" 
	var cabinFacilitiesCharacteristic_9978: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: aircraftCabinVersionIdentification1_9866,
			aircraftCabinVersionIdentification2_9866,
			companyIdentification_9906,
			equipmentIdentificationNumber_8260)

		descEDI(&descText, items: cabinFacilitiesCharacteristic_9978)

		descText.enderFix()

	return descText
	}
}