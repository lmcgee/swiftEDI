//
//  C980.swift					 // FareComponentDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C980: Composite {			// FareComponentDetails

	var dataIndicator_9988: String = "" 
	var quantity_6060: String = "" 
	var firstDate_9916: String = "" 
	var pricingGroup_5388: String = "" 
	var rateTariffClass_5242: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: dataIndicator_9988,
			quantity_6060,
			firstDate_9916,
			pricingGroup_5388,
			rateTariffClass_5242)

		descText.enderFix()

	return descText
	}
}