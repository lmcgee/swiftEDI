//
//  C060.swift					 // PassengerApiDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C060: Composite {			// PassengerApiDetails

	var numberOfUnitsQualifier_6353: String = "" 
	var surname_3808: String = "" 
	var givenName_3809: String = "" 
	var firstDate_9916: String = "" 
	var processingStatusCode_9869: String = "" 
	var otherNames_9754: String = "" 
	var countryCoded_3207: String = "" 
	var freeText_4440: String = "" 
	var placeLocationIdentification_3225: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: numberOfUnitsQualifier_6353,
			surname_3808,
			givenName_3809,
			firstDate_9916,
			processingStatusCode_9869,
			otherNames_9754,
			countryCoded_3207,
			freeText_4440,
			placeLocationIdentification_3225)

		descText.enderFix()

	return descText
	}
}