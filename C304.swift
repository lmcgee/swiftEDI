//
//  C304.swift					 // ProductDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C304: Composite {			// ProductDetails

	var characteristicIdentification_7037: String  = "" 
	var articleAvailabilityCoded_7011: String = "" 
	var specialServiceCoded_7161: String = "" 
	var itemDescriptionIdentification_7009: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: characteristicIdentification_7037,
			articleAvailabilityCoded_7011,
			specialServiceCoded_7161)

		descEDI(&descText, items: itemDescriptionIdentification_7009)

		descText.enderFix()

	return descText
	}
}