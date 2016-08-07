//
//  C967.swift					 // ConsumerReferenceIdentification
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C967: Composite {			// ConsumerReferenceIdentification

	var referenceQualifier_1153: String  = "" 
	var referenceNumber_1154: String = "" 
	var partyName_3036: String = "" 
	var travelerReferenceNumber_9944: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: referenceQualifier_1153,
			referenceNumber_1154,
			partyName_3036,
			travelerReferenceNumber_9944)

		descText.enderFix()

	return descText
	}
}