//
//  C174.swift					 // ValueRange
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C174: Composite {			// ValueRange

	var measureUnitQualifier_6411: String  = "" 
	var measurementValue_6314: String = "" 
	var rangeMinimum_6162: String = "" 
	var rangeMaximum_6152: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: measureUnitQualifier_6411,
			measurementValue_6314,
			rangeMinimum_6162,
			rangeMaximum_6152)

		descText.enderFix()

	return descText
	}
}