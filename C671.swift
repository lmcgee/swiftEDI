//
//  C671.swift					 // TravellerIdentification
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C671: Composite {			// TravellerIdentification

	var referenceNumber_1154: String  = "" 
	var referenceQualifier_1153: String = "" 
	var specificSeat_9809: String = "" 
	var travelerReferenceNumber_9944: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: referenceNumber_1154,
			referenceQualifier_1153,
			specificSeat_9809,
			travelerReferenceNumber_9944)

		descText.enderFix()

	return descText
	}
}