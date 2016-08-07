//
//  C045.swift					 // BoardingSecurityCodeDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C045: Composite {			// BoardingSecurityCodeDetails

	var passengerBoardingSecurityIdentifier_9874: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: passengerBoardingSecurityIdentifier_9874)

		descText.enderFix()

	return descText
	}
}