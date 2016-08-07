//
//  C668.swift					 // TaxDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C668: Composite {			// TaxDetails

	var dutyTaxFeeRate1_5278: String = "" 
	var countryCoded_3207: String = "" 
	var currencyCoded_6345: String = "" 
	var dutyTaxFeeTypeCoded1_5153: String = "" 
	var dutyTaxFeeRate2_5278: String = "" 
	var currencyCode_6345: String = "" 
	var dutyTaxFeeTypeCoded2_5153: String = "" 
	var monetaryAmount_5004: String = "" 
	var monetaryFunctionCoded_5007: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: dutyTaxFeeRate1_5278,
			countryCoded_3207,
			currencyCoded_6345,
			dutyTaxFeeTypeCoded1_5153,
			dutyTaxFeeRate2_5278,
			currencyCode_6345,
			dutyTaxFeeTypeCoded2_5153,
			monetaryAmount_5004)

		descEDI(&descText, items: monetaryFunctionCoded_5007)

		descText.enderFix()

	return descText
	}
}