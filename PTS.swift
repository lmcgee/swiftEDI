//
//  PTS.swift					 // Pricingticketing Subsequent 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class PTS: Segment
{
	var itemNumber_7140: C000
	var ratetariffClassInformation_C643: C643
	var monetaryAmount_5004: C000
	var priceTypeQualifier_5387: C000
	var specialConditionCoded_4183: C000
	var specialConditionCoded1_4183: C000
	var specialConditionCoded2_4183: C000
	var dutytaxfeeCategoryCoded_5305: [C999]]
	var ratetariffClassInformation_C643: [C643]


init(itemNumber_7140: C000,
	ratetariffClassInformation_C643: C643,
	monetaryAmount_5004: C000,
	priceTypeQualifier_5387: C000,
	specialConditionCoded_4183: C000,
	specialConditionCoded1_4183: C000,
	specialConditionCoded2_4183: C000,
	dutytaxfeeCategoryCoded_5305: [C999],
	ratetariffClassInformation_C643: [C643] = []) {

	self.itemNumber_7140 = itemNumber_7140
	self.ratetariffClassInformation_C643 = ratetariffClassInformation_C643
	self.monetaryAmount_5004 = monetaryAmount_5004
	self.priceTypeQualifier_5387 = priceTypeQualifier_5387
	self.specialConditionCoded_4183 = specialConditionCoded_4183
	self.specialConditionCoded1_4183 = specialConditionCoded1_4183
	self.specialConditionCoded2_4183 = specialConditionCoded2_4183
	self.dutytaxfeeCategoryCoded_5305 = dutytaxfeeCategoryCoded_5305
	self.ratetariffClassInformation_C643 = ratetariffClassInformation_C643

	}

func description () -> String {

	var descText = "PTS+"
		descEDISeg(&descText, items: itemNumber_7140)
		descEDISeg(&descText, items: ratetariffClassInformation_C643)
		descEDISeg(&descText, items: monetaryAmount_5004)
		descEDISeg(&descText, items: priceTypeQualifier_5387)
		descEDISeg(&descText, items: specialConditionCoded_4183)
		descEDISeg(&descText, items: specialConditionCoded1_4183)
		descEDISeg(&descText, items: specialConditionCoded2_4183)
		descEDISeg(&descText, items: dutytaxfeeCategoryCoded_5305)
		descEDISeg(&descText, items: ratetariffClassInformation_C643)

	descText.endFinal()

	return descText
}

}

