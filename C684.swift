//
//  C684.swift					 // SpecificTravellerDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C684: Composite {			// SpecificTravellerDetails

	var travelerReferenceNumber_9944: String = "" 
	var measurementValue_6314: String = "" 
	var firstDate_9916: String = "" 
	var travelerSurname_9936: String = "" 
	var travelerGivenName_9942: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: travelerReferenceNumber_9944,
			measurementValue_6314,
			firstDate_9916,
			travelerSurname_9936,
			travelerGivenName_9942)

		descText.enderFix()

	return descText
	}
}