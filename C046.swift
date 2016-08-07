//
//  C046.swift					 // PassengerSelectionDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C046: Composite {			// PassengerSelectionDetails

	var surname_3808: String  = "" 
	var givenName_3809: String = "" 
	var reservationBookingDesignator_9800: String = "" 
	var numberOfPassengerInSurnameFamily_9824: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: surname_3808,
			givenName_3809,
			reservationBookingDesignator_9800,
			numberOfPassengerInSurnameFamily_9824)

		descText.enderFix()

	return descText
	}
}