//
//  C205.swift					 // HazardCode
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C205: Composite {			// HazardCode

	var hazardCodeIdentification_8351: String  = "" 
	var hazardSubstanceItemPageNumber_8078: String = "" 
	var hazardCodeVersionNumber_8092: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: hazardCodeIdentification_8351,
			hazardSubstanceItemPageNumber_8078,
			hazardCodeVersionNumber_8092)

		descText.enderFix()

	return descText
	}
}