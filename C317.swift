//
//  C317.swift					 // MileageTimeDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C317: Composite {			// MileageTimeDetails

	var measurementValue_6314: String = "" 
	var measureUnitQualifier_6411: String = "" 
	var firstTime_9918: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: measurementValue_6314,
			measureUnitQualifier_6411,
			firstTime_9918)

		descText.enderFix()

	return descText
	}
}