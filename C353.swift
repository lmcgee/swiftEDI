//
//  C353.swift					 // LoadDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C353: Composite {			// LoadDetails

	var measurementDimensionCoded_6313: String = "" 
	var measureUnitQualifier_6411: String = "" 
	var measurementValue_6314: String = "" 
	var measurementSignificanceCoded_6321: String = "" 
	var fullEmptyIndicatorCoded_8169: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: measurementDimensionCoded_6313,
			measureUnitQualifier_6411,
			measurementValue_6314,
			measurementSignificanceCoded_6321,
			fullEmptyIndicatorCoded_8169)

		descText.enderFix()

	return descText
	}
}