//
//  C674.swift					 // ExcessBaggageDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C674: Composite {			// ExcessBaggageDetails

	var currencyCoded_6345: String = "" 
	var monetaryAmount_5004: String = "" 
	var processingIndicatorCoded_7365: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: currencyCoded_6345,
			monetaryAmount_5004,
			processingIndicatorCoded_7365)

		descText.enderFix()

	return descText
	}
}