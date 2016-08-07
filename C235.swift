//
//  C235.swift					 // HazardIdentification
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C235: Composite {			// HazardIdentification

	var hazardIdentificationNumberUpperPart_8158: String = "" 
	var substanceIdentificationNumberLowerPart_8186: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: hazardIdentificationNumberUpperPart_8158,
			substanceIdentificationNumberLowerPart_8186)

		descText.enderFix()

	return descText
	}
}