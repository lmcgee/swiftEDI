//
//  C052.swift					 // CabinClassSeatRowRangeDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C052: Composite {			// CabinClassSeatRowRangeDetails

	var seatRowNumber_9830: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: seatRowNumber_9830)

		descText.enderFix()

	return descText
	}
}