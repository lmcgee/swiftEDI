//
//  TPD.swift					 // Traveller Priority Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class TPD: Segment
{
	var companyIdentification_9906: C000
	var ratetariffClassIdentification_5243: C000
	var firstDate_9916: C000
	var travellerReferenceNumber_9944: C000
	var travellerIndicators_C689: C689
	var characteristicIdentification_7037: C000
	var freeText_4440: C000


init(companyIdentification_9906: C000,
	ratetariffClassIdentification_5243: C000,
	firstDate_9916: C000,
	travellerReferenceNumber_9944: C000,
	travellerIndicators_C689: C689,
	characteristicIdentification_7037: C000,
	freeText_4440: C000) {

	self.companyIdentification_9906 = companyIdentification_9906
	self.ratetariffClassIdentification_5243 = ratetariffClassIdentification_5243
	self.firstDate_9916 = firstDate_9916
	self.travellerReferenceNumber_9944 = travellerReferenceNumber_9944
	self.travellerIndicators_C689 = travellerIndicators_C689
	self.characteristicIdentification_7037 = characteristicIdentification_7037
	self.freeText_4440 = freeText_4440

	}

func description () -> String {

	var descText = "TPD+"
		descEDISeg(&descText, items: companyIdentification_9906)
		descEDISeg(&descText, items: ratetariffClassIdentification_5243)
		descEDISeg(&descText, items: firstDate_9916)
		descEDISeg(&descText, items: travellerReferenceNumber_9944)
		descEDISeg(&descText, items: travellerIndicators_C689)
		descEDISeg(&descText, items: characteristicIdentification_7037)
		descEDISeg(&descText, items: freeText_4440)

	descText.endFinal()

	return descText
}

}

