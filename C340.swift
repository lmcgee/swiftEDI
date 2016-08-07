//
//  C340.swift					 // CabinFacilitiesDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C340: Composite {			// CabinFacilitiesDetails

	var cabinFacilitiesCharacteristic_9978: String  = "" 
	var placeLocationQualifier_3227: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: cabinFacilitiesCharacteristic_9978,
			placeLocationQualifier_3227)

		descText.enderFix()

	return descText
	}
}