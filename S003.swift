//
//  S003.swift					 // InterchangeRecipient
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class S003: Composite {			// InterchangeRecipient

	var recipientIdentification_0010: String  = "" 
	var partnerIdentificationCodeQualifier_0007: String = "" 
	var routingAddress_0014: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: recipientIdentification_0010,
			partnerIdentificationCodeQualifier_0007,
			routingAddress_0014)

		descText.enderFix()

	return descText
	}
}