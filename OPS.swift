//
//  OPS.swift					 // Port Of Call Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class OPS: Segment
{
	var ontimePerformance_C368: C368
	var portOfCallDetails_C370: C370
	var companyIdentification_C306: C306
	var productIdentificationDetails_C308: C308


init(ontimePerformance_C368: C368,
	portOfCallDetails_C370: C370,
	companyIdentification_C306: C306,
	productIdentificationDetails_C308: C308) {

	self.ontimePerformance_C368 = ontimePerformance_C368
	self.portOfCallDetails_C370 = portOfCallDetails_C370
	self.companyIdentification_C306 = companyIdentification_C306
	self.productIdentificationDetails_C308 = productIdentificationDetails_C308

	}

func description () -> String {

	var descText = "OPS+"
		descEDISeg(&descText, items: ontimePerformance_C368)
		descEDISeg(&descText, items: portOfCallDetails_C370)
		descEDISeg(&descText, items: companyIdentification_C306)
		descEDISeg(&descText, items: productIdentificationDetails_C308)

	descText.endFinal()

	return descText
}

}

