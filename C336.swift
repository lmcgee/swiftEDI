//
//  C336.swift					 // SystemDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C336: Composite {			// SystemDetails

	var companyIdentification_9906: String = "" 
	var placeLocationIdentification_3225: String = "" 
	var placeLocation_3224: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: companyIdentification_9906,
			placeLocationIdentification_3225,
			placeLocation_3224)

		descText.enderFix()

	return descText
	}
}