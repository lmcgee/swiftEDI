//
//  C994.swift					 // StopoverInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C994: Composite {			// StopoverInformation

	var placeLocationIdentification_3225: String = "" 
	var numberOfUnits_6350: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: placeLocationIdentification_3225,
			numberOfUnits_6350)

		descText.enderFix()

	return descText
	}
}