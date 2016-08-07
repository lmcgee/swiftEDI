//
//  C322.swift					 // TravellerSurnameInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C322: Composite {			// TravellerSurnameInformation

	var travelerSurname_9936: String  = "" 
	var numberOfUnitsQualifier_6353: String = "" 
	var quantity_6060: String = "" 
	var statusCoded_4405: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: travelerSurname_9936,
			numberOfUnitsQualifier_6353,
			quantity_6060,
			statusCoded_4405)

		descText.enderFix()

	return descText
	}
}