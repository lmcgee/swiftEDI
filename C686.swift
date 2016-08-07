//
//  C686.swift					 // BaggageReferenceDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C686: Composite {			// BaggageReferenceDetails

	var processingIndicatorCoded_7365: String = "" 
	var identityNumber_7402: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: processingIndicatorCoded_7365,
			identityNumber_7402)

		descText.enderFix()

	return descText
	}
}