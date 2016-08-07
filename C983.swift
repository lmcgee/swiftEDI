//
//  C983.swift					 // RateInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C983: Composite {			// RateInformation

	var rateTariffClassIdentification_5243: String = "" 
	var rangeMinimum_6162: String = "" 
	var rangeMaximum_6152: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: rateTariffClassIdentification_5243,
			rangeMinimum_6162,
			rangeMaximum_6152)

		descText.enderFix()

	return descText
	}
}