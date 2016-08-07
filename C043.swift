//
//  C043.swift					 // SeatDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C043: Composite {			// SeatDetails

	var specificSeat_9809: String = "" 
	var freeseatingReferenceIdentifier_9861: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: specificSeat_9809,
			freeseatingReferenceIdentifier_9861)

		descText.enderFix()

	return descText
	}
}