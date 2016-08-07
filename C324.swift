//
//  C324.swift					 // TravellerDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C324: Composite {			// TravellerDetails

	var travelerGivenName_9942: String = "" 
	var numberOfUnitsQualifier_6353: String = "" 
	var travelerReferenceNumber_9944: String = "" 
	var travelerAccompaniedByInfant_9946: String = "" 
	var otherNames_9754: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: travelerGivenName_9942,
			numberOfUnitsQualifier_6353,
			travelerReferenceNumber_9944,
			travelerAccompaniedByInfant_9946)

		descEDI(&descText, items: otherNames_9754)

		descText.enderFix()

	return descText
	}
}