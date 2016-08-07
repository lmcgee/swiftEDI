//
//  C675.swift					 // BaggageDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C675: Composite {			// BaggageDetails

	var quantity_6060: String = "" 
	var measurementValue_6314: String = "" 
	var allowanceOrChargeQualifier_5463: String = "" 
	var measureUnitQualifier_6411: String = "" 
	var processingIndicatorCoded_7365: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: quantity_6060,
			measurementValue_6314,
			allowanceOrChargeQualifier_5463,
			measureUnitQualifier_6411,
			processingIndicatorCoded_7365)

		descText.enderFix()

	return descText
	}
}