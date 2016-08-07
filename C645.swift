//
//  C645.swift					 // FareQualifierInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C645: Composite {			// FareQualifierInformation

	var fareQualifier_9910: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: fareQualifier_9910)

		descText.enderFix()

	return descText
	}
}