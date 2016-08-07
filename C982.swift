//
//  C982.swift					 // TariffInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C982: Composite {			// TariffInformation

	var rateTypeIdentification_5907: String = "" 
	var monetaryAmount_5004: String = "" 
	var currencyCoded_6345: String = "" 
	var ratePlanCoded_5911: String = "" 
	var monetaryAmountTypeQualifier_5025: String = "" 
	var numberOfPeriods_2152: String = "" 
	var priceChangeIndicatorCoded_5377: String = "" 
	var totalMonetaryAmount_5906: String = "" 
	var firstDate_9916: String = "" 
	var secondDate_9920: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: rateTypeIdentification_5907,
			monetaryAmount_5004,
			currencyCoded_6345,
			ratePlanCoded_5911,
			monetaryAmountTypeQualifier_5025,
			numberOfPeriods_2152,
			priceChangeIndicatorCoded_5377,
			totalMonetaryAmount_5906,
			firstDate_9916,
			secondDate_9920)

		descText.enderFix()

	return descText
	}
}