//
//  DIS.swift					 // Discount Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class DIS: Segment
{
	var discountInformation_C998: C998
	var discountInformation1_C998: C998


init(discountInformation_C998: C998,
	discountInformation1_C998: C998) {

	self.discountInformation_C998 = discountInformation_C998
	self.discountInformation1_C998 = discountInformation1_C998

	}

func description () -> String {

	var descText = "DIS+"
		descEDISeg(&descText, items: discountInformation_C998)
		descEDISeg(&descText, items: discountInformation1_C998)

	descText.endFinal()

	return descText
}

}

