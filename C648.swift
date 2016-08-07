//
//  C648.swift					 // DiscountPenaltyInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C648: Composite {			// DiscountPenaltyInformation

	var fareQualifier_9910: String  = "" 
	var monetaryAmount_5004: String = "" 
	var percentage_5482: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: fareQualifier_9910,
			monetaryAmount_5004,
			percentage_5482)

		descText.enderFix()

	return descText
	}
}