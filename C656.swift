//
//  C656.swift					 // StatusDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C656: Composite {			// StatusDetails

	var statusIndicatorCoded_1245: String = "" 
	var actionRequestNotificationCoded_1229: String = "" 
	var statusTypeCoded_9015: String = "" 
	var freeText_4440: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: statusIndicatorCoded_1245,
			actionRequestNotificationCoded_1229,
			statusTypeCoded_9015,
			freeText_4440)

		descText.enderFix()

	return descText
	}
}