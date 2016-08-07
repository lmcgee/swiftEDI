//
//  C330.swift					 // ReservationControlInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C330: Composite {			// ReservationControlInformation

	var companyIdentification_9906: String = "" 
	var reservationControlNumber_9956: String = "" 
	var reservationControlType_9958: String = "" 
	var firstDate_9916: String = "" 
	var time_9994: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: companyIdentification_9906,
			reservationControlNumber_9956,
			reservationControlType_9958,
			firstDate_9916,
			time_9994)

		descText.enderFix()

	return descText
	}
}