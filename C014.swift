//
//  C014.swift					 // OutboundFlightNumberDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C014: Composite {			// OutboundFlightNumberDetails

	var flightNumber_3802: String  = "" 
	var operationalSuffixToTheCarrierCode_9801: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: flightNumber_3802,
			operationalSuffixToTheCarrierCode_9801)

		descText.enderFix()

	return descText
	}
}