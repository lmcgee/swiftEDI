//
//  C320.swift					 // ProductFacilities
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C320: Composite {			// ProductFacilities

	var facilityTypeCoded_9932: String = "" 
	var facilityDescriptionText_9934: String = "" 
	var productDetailsQualifier_9970: String = "" 
	var characteristicIdentification_7037: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: facilityTypeCoded_9932,
			facilityDescriptionText_9934,
			productDetailsQualifier_9970)

		descEDI(&descText, items: characteristicIdentification_7037)

		descText.enderFix()

	return descText
	}
}