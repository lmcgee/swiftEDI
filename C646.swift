//
//  C646.swift					 // AdditionalFareQualifierDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C646: Composite {			// AdditionalFareQualifierDetails

	var rateTariffClass_5242: String = "" 
	var commodityRateIdentification_7357: String = "" 
	var pricingGroup_5388: String = "" 
	var rateTariffClass1_5242: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: rateTariffClass_5242,
			commodityRateIdentification_7357,
			pricingGroup_5388)

		descEDI(&descText, items: rateTariffClass1_5242)

		descText.enderFix()

	return descText
	}
}