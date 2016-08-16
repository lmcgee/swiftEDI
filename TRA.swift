//
//  TRA.swift					 // Transport Identifier 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class TRA: Segment
{
	var companyIdentification_C306: C306
	var productIdentificationDetails_C308: [C308]


init(companyIdentification_C306: C306,
	productIdentificationDetails_C308: [C308] = []) {

	self.companyIdentification_C306 = companyIdentification_C306
	self.productIdentificationDetails_C308 = productIdentificationDetails_C308

	}

func description () -> String {

	var descText = "TRA+"
		descEDISeg(&descText, items: companyIdentification_C306)
		descEDISeg(&descText, items: productIdentificationDetails_C308)

	descText.endFinal()

	return descText
}

}

