//
//  C661.swift					 // ConversionRateDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C661: Composite {			// ConversionRateDetails

	var conversionTypeCoded_9875: String = "" 
	var currencyCoded_6345: String = "" 
	var rateTypeQualifier_5419: String = "" 
	var monetaryAmount1_5004: String = "" 
	var monetaryAmount2_5004: String = "" 
	var dutyTaxFeeTypeCoded_5153: String = "" 
	var measurementValue_6314: String = "" 
	var measurementSignificanceCoded_6321: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: conversionTypeCoded_9875,
			currencyCoded_6345,
			rateTypeQualifier_5419,
			monetaryAmount1_5004,
			monetaryAmount2_5004,
			dutyTaxFeeTypeCoded_5153,
			measurementValue_6314,
			measurementSignificanceCoded_6321)

		descText.enderFix()

	return descText
	}
}