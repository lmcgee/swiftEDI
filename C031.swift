//
//  C031.swift					 // ActionDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C031: Composite {			// ActionDetails

	var updateActionCode_9858: String  = "" 
	var actionRequestNotificationCoded_1229: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: updateActionCode_9858)

		descEDI(&descText, items: actionRequestNotificationCoded_1229)

		descText.enderFix()

	return descText
	}
}