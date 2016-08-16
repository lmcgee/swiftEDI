//
//  QAD.swift					 // Quantity And Action Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class QAD: Segment
{
	var actionRequestNotificationCoded_1229: C000
	var quantityAndActionDetails_C657: C657
	var quantityAndActionDetails1_C657: [C657]


init(actionRequestNotificationCoded_1229: C000,
	quantityAndActionDetails_C657: C657,
	quantityAndActionDetails1_C657: [C657] = []) {

	self.actionRequestNotificationCoded_1229 = actionRequestNotificationCoded_1229
	self.quantityAndActionDetails_C657 = quantityAndActionDetails_C657
	self.quantityAndActionDetails1_C657 = quantityAndActionDetails1_C657

	}

func description () -> String {

	var descText = "QAD+"
		descEDISeg(&descText, items: actionRequestNotificationCoded_1229)
		descEDISeg(&descText, items: quantityAndActionDetails_C657)
		descEDISeg(&descText, items: quantityAndActionDetails1_C657)

	descText.endFinal()

	return descText
}

}

