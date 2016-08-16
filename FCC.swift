//
//  FCC.swift					 // Fare Calculation Code Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class FCC: Segment
{
	var chargeCategoryCoded_5237: C000
	var monetaryAmount_5004: C000
	var placelocationIdentification_3225: C000
	var placelocationIdentification1_3225: C000
	var percentage_5482: C000


init(chargeCategoryCoded_5237: C000,
	monetaryAmount_5004: C000,
	placelocationIdentification_3225: C000,
	placelocationIdentification1_3225: C000,
	percentage_5482: C000) {

	self.chargeCategoryCoded_5237 = chargeCategoryCoded_5237
	self.monetaryAmount_5004 = monetaryAmount_5004
	self.placelocationIdentification_3225 = placelocationIdentification_3225
	self.placelocationIdentification1_3225 = placelocationIdentification1_3225
	self.percentage_5482 = percentage_5482

	}

func description () -> String {

	var descText = "FCC+"
		descEDISeg(&descText, items: chargeCategoryCoded_5237)
		descEDISeg(&descText, items: monetaryAmount_5004)
		descEDISeg(&descText, items: placelocationIdentification_3225)
		descEDISeg(&descText, items: placelocationIdentification1_3225)
		descEDISeg(&descText, items: percentage_5482)

	descText.endFinal()

	return descText
}

}

