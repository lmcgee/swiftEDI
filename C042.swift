//
//  C042.swift					 // FlightServiceDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C042: Composite {			// FlightServiceDetails

	var flightServiceCode_9871: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: flightServiceCode_9871)

		descText.enderFix()

	return descText
	}
}