//
//  C981.swift					 // CorporateFareInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C981: Composite {			// CorporateFareInformation

	var fareQualifier_9910: String = "" 
	var identifyNumber_7402: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: fareQualifier_9910)

		descEDI(&descText, items: identifyNumber_7402)

		descText.enderFix()

	return descText
	}
}