//
//  C657.swift					 // QuantityAndActionDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C657: Composite {			// QuantityAndActionDetails

	var quantity_6060: String = "" 
	var option_9750: String = "" 
	var actionRequestNotificationCoded_1229: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: quantity_6060,
			option_9750,
			actionRequestNotificationCoded_1229)

		descText.enderFix()

	return descText
	}
}