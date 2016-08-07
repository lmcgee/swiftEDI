//
//  C308.swift					 // ProductIdentificationDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C308: Composite {			// ProductIdentificationDetails

	var productIdentification_9908: String  = "" 
	var characteristicIdentification_7037: String = "" 
	var productIdentificationCharacteristic_9914: String = "" 
	var itemDescriptionIdentification_7009: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: productIdentification_9908,
			characteristicIdentification_7037,
			productIdentificationCharacteristic_9914)

		descEDI(&descText, items: itemDescriptionIdentification_7009)

		descText.enderFix()

	return descText
	}
}