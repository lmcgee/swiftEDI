//
//  C355.swift					 // ProcessingDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C355: Composite {			// ProcessingDetails

	var processingIndicatorCoded_7365: String  = "" 
	var statusCoded_4405: String = "" 
	var freeText_4440: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: processingIndicatorCoded_7365,
			statusCoded_4405)

		descEDI(&descText, items: freeText_4440)

		descText.enderFix()

	return descText
	}
}