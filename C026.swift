//
//  C026.swift					 // SeatAdjustmentDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C026: Composite {			// SeatAdjustmentDetails

	var seatCountAdjustment_9832: String = "" 
	var reasonForSeatAdjustmentCoded_9833: String = "" 
	var weight_6803: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: seatCountAdjustment_9832,
			reasonForSeatAdjustmentCoded_9833,
			weight_6803)

		descText.enderFix()

	return descText
	}
}