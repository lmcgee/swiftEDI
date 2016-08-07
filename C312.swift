//
//  C312.swift					 // ConnectionDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C312: Composite {			// ConnectionDetails

	var placeLocationIdentification_3225: String = "" 
	var companyIdentification_9906: String = "" 
	var firstTime_9918: String = "" 
	var secondTime_9922: String = "" 
	var processingIndicatorCoded_7365: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: placeLocationIdentification_3225,
			companyIdentification_9906,
			firstTime_9918,
			secondTime_9922,
			processingIndicatorCoded_7365)

		descText.enderFix()

	return descText
	}
}