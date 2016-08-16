//
//  ACT.swift					 // Action Identification 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class ACT: Segment
{
	var actionRequestNotificationCoded_1229: C000
	var companyIdentification_C306: C306
	var productIdentificationDetails_C308: C308
	var companyIdentification1_C306: C306
	var productIdentificationDetails1_C308: C308
	var reasonInformation_C369: C369


init(actionRequestNotificationCoded_1229: C000,
	companyIdentification_C306: C306,
	productIdentificationDetails_C308: C308,
	companyIdentification1_C306: C306,
	productIdentificationDetails1_C308: C308,
	reasonInformation_C369: C369) {

	self.actionRequestNotificationCoded_1229 = actionRequestNotificationCoded_1229
	self.companyIdentification_C306 = companyIdentification_C306
	self.productIdentificationDetails_C308 = productIdentificationDetails_C308
	self.companyIdentification1_C306 = companyIdentification1_C306
	self.productIdentificationDetails1_C308 = productIdentificationDetails1_C308
	self.reasonInformation_C369 = reasonInformation_C369

	}

func description () -> String {

	var descText = "ACT+"
		descEDISeg(&descText, items: actionRequestNotificationCoded_1229)
		descEDISeg(&descText, items: companyIdentification_C306)
		descEDISeg(&descText, items: productIdentificationDetails_C308)
		descEDISeg(&descText, items: companyIdentification1_C306)
		descEDISeg(&descText, items: productIdentificationDetails1_C308)
		descEDISeg(&descText, items: reasonInformation_C369)

	descText.endFinal()

	return descText
}

}

