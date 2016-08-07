//
//  C649.swift					 // DiscountPenaltyMonetaryInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C649: Composite {			// DiscountPenaltyMonetaryInformation

	var monetaryFunctionCoded_5007: String = "" 
	var monetaryAmountTypeQualifier_5025: String = "" 
	var monetaryAmount_5004: String = "" 
	var rateTariffClass_5242: String = "" 
	var currencyCoded_6345: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: monetaryFunctionCoded_5007,
			monetaryAmountTypeQualifier_5025,
			monetaryAmount_5004,
			rateTariffClass_5242,
			currencyCoded_6345)

		descText.enderFix()

	return descText
	}
}