//
//  SER.swift					 // Additional Service Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class SER: Segment
{
	var productFacilities_C320: C320


init(productFacilities_C320: C320) {

	self.productFacilities_C320 = productFacilities_C320

	}

func description () -> String {

	var descText = "SER+"
		descEDISeg(&descText, items: productFacilities_C320)

	descText.endFinal()

	return descText
}

}

