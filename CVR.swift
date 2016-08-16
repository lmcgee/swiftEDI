//
//  CVR.swift					 // Conversion Rate 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class CVR: Segment
{
	var conversionRateDetails_C661: C661
	var conversionRateDetails1_C661: C661


init(conversionRateDetails_C661: C661,
	conversionRateDetails1_C661: C661) {

	self.conversionRateDetails_C661 = conversionRateDetails_C661
	self.conversionRateDetails1_C661 = conversionRateDetails1_C661

	}

func description () -> String {

	var descText = "CVR+"
		descEDISeg(&descText, items: conversionRateDetails_C661)
		descEDISeg(&descText, items: conversionRateDetails1_C661)

	descText.endFinal()

	return descText
}

}

