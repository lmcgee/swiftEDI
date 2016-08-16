//
//  CLT.swift					 // Clearterminate Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class CLT: Segment
{
	var actionRequestNotificationCoded_1229: C000
	var messageFunctionCoded_1225: C000
	var messageFunctionCoded1_1225: C000
	var freeText_4440: C000


init(actionRequestNotificationCoded_1229: C000,
	messageFunctionCoded_1225: C000,
	messageFunctionCoded1_1225: C000,
	freeText_4440: C000) {

	self.actionRequestNotificationCoded_1229 = actionRequestNotificationCoded_1229
	self.messageFunctionCoded_1225 = messageFunctionCoded_1225
	self.messageFunctionCoded1_1225 = messageFunctionCoded1_1225
	self.freeText_4440 = freeText_4440

	}

func description () -> String {

	var descText = "CLT+"
		descEDISeg(&descText, items: actionRequestNotificationCoded_1229)
		descEDISeg(&descText, items: messageFunctionCoded_1225)
		descEDISeg(&descText, items: messageFunctionCoded1_1225)
		descEDISeg(&descText, items: freeText_4440)

	descText.endFinal()

	return descText
}

}

