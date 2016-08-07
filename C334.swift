//
//  C334.swift					 // SpecialRequirementsTypeDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C334: Composite {			// SpecialRequirementsTypeDetails

	var specialRequirementType_9962: String  = "" 
	var statusCoded_4405: String = "" 
	var quantity_6060: String = "" 
	var companyIdentification_9906: String = "" 
	var processingIndicatorCoded_7365: [String] = [] 
	var placeLocationIdentification_3225: [String] = [] 
	var freeText_4440: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: specialRequirementType_9962,
			statusCoded_4405,
			quantity_6060,
			companyIdentification_9906)

		descEDI(&descText, items: processingIndicatorCoded_7365)

		
		descEDI(&descText, items: placeLocationIdentification_3225)

		
		descEDI(&descText, items: freeText_4440)

		descText.enderFix()

	return descText
	}
}