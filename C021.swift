//
//  C021.swift					 // SurnameConnectorDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C021: Composite {			// SurnameConnectorDetails

	var surnameFamilyNameConnector_9828: String  = "" 
	var passengerNumberWithinASurnameFamilyName_9829: String  = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: surnameFamilyNameConnector_9828,
			passengerNumberWithinASurnameFamilyName_9829)

		descText.enderFix()

	return descText
	}
}