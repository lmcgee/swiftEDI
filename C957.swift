//
//  C957.swift					 // CommissionDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C957: Composite {			// CommissionDetails

	var paymentConditionsCoded_4439: String  = "" 
	var monetaryAmount_5004: String = "" 
	var currencyCoded_6345: String = "" 
	var partyName_3036: String = "" 
	var freeText_4440: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: paymentConditionsCoded_4439,
			monetaryAmount_5004,
			currencyCoded_6345,
			partyName_3036,
			freeText_4440)

		descText.enderFix()

	return descText
	}
}