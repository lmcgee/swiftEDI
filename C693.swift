//
//  C693.swift					 // BagtagStubInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C693: Composite {			// BagtagStubInformation

	var carrierIdentification_3127: String  = "" 
	var flightNumber_3802: String  = "" 
	var departureDateAndTime_2281: String  = "" 
	var placeOfDestinationCoded_3259: String  = "" 
	var reservationBookingDesignator_9800: String = "" 
	var operationalSuffixToTheCarrierCode_9801: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: carrierIdentification_3127,
			flightNumber_3802,
			departureDateAndTime_2281,
			placeOfDestinationCoded_3259,
			reservationBookingDesignator_9800,
			operationalSuffixToTheCarrierCode_9801)

		descText.enderFix()

	return descText
	}
}