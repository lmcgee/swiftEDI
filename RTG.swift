//
//  RTG.swift					 // Routing Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class RTG: Segment
{
	var productLocationDetails_C316: [C316]


init(productLocationDetails_C316: [C316] = []) {

	self.productLocationDetails_C316 = productLocationDetails_C316

	}

func description () -> String {

	var descText = "RTG+"
		descEDISeg(&descText, items: productLocationDetails_C316)

	descText.endFinal()

	return descText
}

}

