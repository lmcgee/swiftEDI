//
//  C694.swift					 // BagPoolReference
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C694: Composite {			// BagPoolReference

	var updateActionCode_9858: String  = "" 
	var processingIndicatorCoded_7365: String = "" 
	var identityNumber_7402: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: updateActionCode_9858,
			processingIndicatorCoded_7365,
			identityNumber_7402)

		descText.enderFix()

	return descText
	}
}