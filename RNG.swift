//
//  RNG.swift					 // Range Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class RNG: Segment
{
	var rangeTypeQualifier_6167: C000
	var range_C280: [C280]


init(rangeTypeQualifier_6167: C000,
	range_C280: [C280] = []) {

	self.rangeTypeQualifier_6167 = rangeTypeQualifier_6167
	self.range_C280 = range_C280

	}

func description () -> String {

	var descText = "RNG+"
		descEDISeg(&descText, items: rangeTypeQualifier_6167)
		descEDISeg(&descText, items: range_C280)

	descText.endFinal()

	return descText
}

}

