//
//  C034.swift					 // UpdateSeatAdjustmentDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C034: Composite {			// UpdateSeatAdjustmentDetails

	var updateActionCode_9858: String  = "" 
	var seatCountAdjustment_9832: String = "" 
	var reasonForSeatAdjustmentCoded_9833: String = "" 
	var weight_6803: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: updateActionCode_9858,
			seatCountAdjustment_9832,
			reasonForSeatAdjustmentCoded_9833,
			weight_6803)

		descText.enderFix()

	return descText
	}
}