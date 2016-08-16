//
//  DPI.swift					 // Discount And Penalty Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class DPI: Segment
{
	var sectorsubjectIdentificationQualifier_7293: C000
	var discountpenaltyMonetaryInformation_C649: [C649]


init(sectorsubjectIdentificationQualifier_7293: C000,
	discountpenaltyMonetaryInformation_C649: [C649] = []) {

	self.sectorsubjectIdentificationQualifier_7293 = sectorsubjectIdentificationQualifier_7293
	self.discountpenaltyMonetaryInformation_C649 = discountpenaltyMonetaryInformation_C649

	}

func description () -> String {

	var descText = "DPI+"
		descEDISeg(&descText, items: sectorsubjectIdentificationQualifier_7293)
		descEDISeg(&descText, items: discountpenaltyMonetaryInformation_C649)

	descText.endFinal()

	return descText
}

}

