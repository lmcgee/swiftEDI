//
//  C663.swift					 // MonetaryInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C663: Composite {			// MonetaryInformation

	var monetaryAmountTypeQualifier_5025: String  = "" 
	var allowanceOrChargeNumber_1230: String = "" 
	var currencyCoded_6345: String = "" 
	var placeLocationIdentification_3225: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: monetaryAmountTypeQualifier_5025,
			allowanceOrChargeNumber_1230,
			currencyCoded_6345)

		descEDI(&descText, items: placeLocationIdentification_3225)

		descText.enderFix()

	return descText
	}
}