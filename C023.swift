//
//  C023.swift					 // ClassDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C023: Composite {			// ClassDetails

	var reservationBookingDesignator_9800: String  = "" 
	var cabinClassOfServiceCoded_9873: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: reservationBookingDesignator_9800,
			cabinClassOfServiceCoded_9873)

		descText.enderFix()

	return descText
	}
}