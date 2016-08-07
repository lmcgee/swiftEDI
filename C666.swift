//
//  C666.swift					 // LocationDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C666: Composite {			// LocationDetails

	var placeLocationIdentification_3225: String = "" 
	var countryCoded_3207: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: placeLocationIdentification_3225,
			countryCoded_3207)

		descText.enderFix()

	return descText
	}
}