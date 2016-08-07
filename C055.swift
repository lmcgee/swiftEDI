//
//  C055.swift					 // WarningDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C055: Composite {			// WarningDetails

	var processingLevel_9876: String  = "" 
	var errorWarningMessageNumber_9845: String = "" 
	var freeText_4440: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: processingLevel_9876,
			errorWarningMessageNumber_9845,
			freeText_4440)

		descText.enderFix()

	return descText
	}
}