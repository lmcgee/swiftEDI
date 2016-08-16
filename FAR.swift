//
//  FAR.swift					 // Fare Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class FAR: Segment
{
	var numberOfUnitsQualifier_6353: C000
	var quantity_6060: C000
	var fareDetails_C662: C662
	var identityNumber_7402: C000
	var fareTypeGroupingInformation_C644: C644
	var ratetariffClass_5242: [C999]]


init(numberOfUnitsQualifier_6353: C000,
	quantity_6060: C000,
	fareDetails_C662: C662,
	identityNumber_7402: C000,
	fareTypeGroupingInformation_C644: C644,
	ratetariffClass_5242: [C999]) {

	self.numberOfUnitsQualifier_6353 = numberOfUnitsQualifier_6353
	self.quantity_6060 = quantity_6060
	self.fareDetails_C662 = fareDetails_C662
	self.identityNumber_7402 = identityNumber_7402
	self.fareTypeGroupingInformation_C644 = fareTypeGroupingInformation_C644
	self.ratetariffClass_5242 = ratetariffClass_5242

	}

func description () -> String {

	var descText = "FAR+"
		descEDISeg(&descText, items: numberOfUnitsQualifier_6353)
		descEDISeg(&descText, items: quantity_6060)
		descEDISeg(&descText, items: fareDetails_C662)
		descEDISeg(&descText, items: identityNumber_7402)
		descEDISeg(&descText, items: fareTypeGroupingInformation_C644)
		descEDISeg(&descText, items: ratetariffClass_5242)

	descText.endFinal()

	return descText
}

}

