//
//  C047.swift					 // RangeOfRowsDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C047: Composite {			// RangeOfRowsDetails

	var seatRowNumber_9830: String  = "" 
	var rowsNumberOfRows_6804: String = "" 
	var seatColumn_9831: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: seatRowNumber_9830,
			rowsNumberOfRows_6804)

		descEDI(&descText, items: seatColumn_9831)

		descText.enderFix()

	return descText
	}
}