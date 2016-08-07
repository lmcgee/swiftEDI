//
//  C348.swift					 // StationInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C348: Composite {			// StationInformation

	var gateDescription_9870: String = "" 
	var relatedPlaceLocationOneIdentification_3223: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: gateDescription_9870)

		descEDI(&descText, items: relatedPlaceLocationOneIdentification_3223)

		descText.enderFix()

	return descText
	}
}