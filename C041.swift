//
//  C041.swift					 // ComplexingFlightDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C041: Composite {			// ComplexingFlightDetails

	var flightNumber_3802: String  = "" 
	var placeOfDepartureCoded_3215: String  = "" 
	var placeOfDestinationCoded_3259: String  = "" 
	var carrierIdentification_3127: String = "" 
	var operationalSuffixToTheCarrierCode_9801: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: flightNumber_3802,
			placeOfDepartureCoded_3215,
			placeOfDestinationCoded_3259,
			carrierIdentification_3127,
			operationalSuffixToTheCarrierCode_9801)

		descText.enderFix()

	return descText
	}
}