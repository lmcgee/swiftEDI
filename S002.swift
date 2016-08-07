//
//  S002.swift					 // InterchangeSender
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class S002: Composite {			// InterchangeSender

	var senderIdentification_0004: String  = "" 
	var partnerIdentificationCodeQualifier_0007: String = "" 
	var addressForReverseRouting_0008: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: senderIdentification_0004,
			partnerIdentificationCodeQualifier_0007,
			addressForReverseRouting_0008)

		descText.enderFix()

	return descText
	}
}