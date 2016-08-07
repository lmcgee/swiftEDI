//
//  C211.swift					 // Dimensions
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C211: Composite {			// Dimensions

	var measureUnitQualifier_6411: String = "" 
	var lengthDimension_6168: String = "" 
	var widthDimension_6140: String = "" 
	var heightDimension_6008: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: measureUnitQualifier_6411,
			lengthDimension_6168,
			widthDimension_6140,
			heightDimension_6008)

		descText.enderFix()

	return descText
	}
}