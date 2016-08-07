//
//  C280.swift					 // Range
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C280: Composite {			// Range

	var measureUnitQualifier_6411: String = "" 
	var rangeMinimum_6162: String = "" 
	var rangeMaximum_6152: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: measureUnitQualifier_6411,
			rangeMinimum_6162,
			rangeMaximum_6152)

		descText.enderFix()

	return descText
	}
}