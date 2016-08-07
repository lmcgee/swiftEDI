//
//  C012.swift					 // RequestorIdentificationDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C012: Composite {			// RequestorIdentificationDetails

	var requestorIdentification_3806: String = "" 
	var identificationCodeSetDesignator_9879: String = "" 
	var officeIdentification_9880: String = "" 
	var requestorAuthorityCode_9881: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: requestorIdentification_3806,
			identificationCodeSetDesignator_9879,
			officeIdentification_9880,
			requestorAuthorityCode_9881)

		descText.enderFix()

	return descText
	}
}