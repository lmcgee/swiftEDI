//
//  FRU.swift					 // Fare Rules Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class FRU: Segment
{
	var ratetariffClassIdentification_5243: C000
	var companyIdentification_C306: C306
	var rulePartIdentification_7175: [C999]]


init(ratetariffClassIdentification_5243: C000,
	companyIdentification_C306: C306,
	rulePartIdentification_7175: [C999]) {

	self.ratetariffClassIdentification_5243 = ratetariffClassIdentification_5243
	self.companyIdentification_C306 = companyIdentification_C306
	self.rulePartIdentification_7175 = rulePartIdentification_7175

	}

func description () -> String {

	var descText = "FRU+"
		descEDISeg(&descText, items: ratetariffClassIdentification_5243)
		descEDISeg(&descText, items: companyIdentification_C306)
		descEDISeg(&descText, items: rulePartIdentification_7175)

	descText.endFinal()

	return descText
}

}

