//
//  C679.swift					 // SpecificSeatDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C679: Composite {			// SpecificSeatDetails

	var specificSeat_9809: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: specificSeat_9809)

		descText.enderFix()

	return descText
	}
}