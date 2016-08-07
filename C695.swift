//
//  C695.swift					 // UpdateBagtagStubInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C695: Composite {			// UpdateBagtagStubInformation

	var updateActionCode_9858: String  = "" 
	var carrierIdentification_3127: String  = "" 
	var flightNumber_3802: String  = "" 
	var departureDateAndTime_2281: String  = "" 
	var placeOfDestinationCoded_3259: String  = "" 
	var reservationBookingDesignator_9800: String = "" 
	var operationalSuffixToTheCarrierCode_9801: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: updateActionCode_9858,
			carrierIdentification_3127,
			flightNumber_3802,
			departureDateAndTime_2281,
			placeOfDestinationCoded_3259,
			reservationBookingDesignator_9800,
			operationalSuffixToTheCarrierCode_9801)

		descText.enderFix()

	return descText
	}
}