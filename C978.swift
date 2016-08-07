//
//  C978.swift					 // CreditCardInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C978: Composite {			// CreditCardInformation

	var partyName_3036: String  = "" 
	var referenceNumber_1154: String = "" 
	var firstDate_9916: String = "" 
	var bankIdentification_3901: String = "" 
	var travelerReferenceNumber_9944: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: partyName_3036,
			referenceNumber_1154,
			firstDate_9916,
			bankIdentification_3901,
			travelerReferenceNumber_9944)

		descText.enderFix()

	return descText
	}
}