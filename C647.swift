//
//  C647.swift					 // FareCategoryCodes
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C647: Composite {			// FareCategoryCodes

	var rateTypeIdentification_5263: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: rateTypeIdentification_5263)

		descText.enderFix()

	return descText
	}
}