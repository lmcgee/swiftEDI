//
//  FQU.swift					 // Fare Qualifier Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class FQU: Segment
{
	var movementTypeCoded_8335: C000
	var fareCategoryCodes_C647: C647
	var fareDetails_C662: C662
	var additionalFareQualifierDetails_C646: C646
	var discountpenaltyInformation_C648: [C648]


init(movementTypeCoded_8335: C000,
	fareCategoryCodes_C647: C647,
	fareDetails_C662: C662,
	additionalFareQualifierDetails_C646: C646,
	discountpenaltyInformation_C648: [C648] = []) {

	self.movementTypeCoded_8335 = movementTypeCoded_8335
	self.fareCategoryCodes_C647 = fareCategoryCodes_C647
	self.fareDetails_C662 = fareDetails_C662
	self.additionalFareQualifierDetails_C646 = additionalFareQualifierDetails_C646
	self.discountpenaltyInformation_C648 = discountpenaltyInformation_C648

	}

func description () -> String {

	var descText = "FQU+"
		descEDISeg(&descText, items: movementTypeCoded_8335)
		descEDISeg(&descText, items: fareCategoryCodes_C647)
		descEDISeg(&descText, items: fareDetails_C662)
		descEDISeg(&descText, items: additionalFareQualifierDetails_C646)
		descEDISeg(&descText, items: discountpenaltyInformation_C648)

	descText.endFinal()

	return descText
}

}

