//
//  C667.swift					 // TicketNumberDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C667: Composite {			// TicketNumberDetails

	var documentMessageNumber_1004: String = "" 
	var documentMessageNameCoded_1001: String = "" 
	var totalNumberOfItems_7240: String = "" 
	var dataIndicator_9988: String = "" 
	var actionRequestNotificationCoded_1229: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: documentMessageNumber_1004,
			documentMessageNameCoded_1001,
			totalNumberOfItems_7240,
			dataIndicator_9988,
			actionRequestNotificationCoded_1229)

		descText.enderFix()

	return descText
	}
}