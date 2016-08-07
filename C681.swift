//
//  C681.swift					 // SeatRangeDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C681: Composite {			// SeatRangeDetails

	var seatRowNumber_9830: String  = "" 
	var rangeMaximum_6152: String = "" 
	var seatColumn_9831: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: seatRowNumber_9830,
			rangeMaximum_6152,
			seatColumn_9831)

		descText.enderFix()

	return descText
	}
}