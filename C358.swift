//
//  C358.swift					 // BagtagDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C358: Composite {			// BagtagDetails

	var companyIdentification_9906: String = "" 
	var itemNumber_7140: String = "" 
	var totalNumberOfItems_7240: String = "" 
	var placeLocationIdentification_3225: String = "" 
	var companyIdentificationNumber_9996: String = "" 
	var dataIndicator_9988: String = "" 
	var itemCharacteristicCoded_7081: String = "" 
	var specialRequirementType_9962: String = "" 
	var measurementValue_6314: String = "" 
	var measureUnitQualifier_6411: String = "" 
	var freeText_4440: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: companyIdentification_9906,
			itemNumber_7140,
			totalNumberOfItems_7240,
			placeLocationIdentification_3225,
			companyIdentificationNumber_9996,
			dataIndicator_9988,
			itemCharacteristicCoded_7081,
			specialRequirementType_9962,
			measurementValue_6314,
			measureUnitQualifier_6411,
			freeText_4440)

		descText.enderFix()

	return descText
	}
}