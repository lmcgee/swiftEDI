//
//  ORG.swift					 // Originator Of Request Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class ORG: Segment
{
	var systemDetails_C336: C336
	var originatorIdentificationDetails_C300: C300
	var location_C328: C328
	var systemDetails1_C336: C336
	var originatorTypeCode_9972: C000
	var originatorDetails_C354: C354
	var originatorsAuthorityRequestCode_9904: C000
	var communicationNumber_3148: C000
	var partyIdIdentification_3039: C000


init(systemDetails_C336: C336,
	originatorIdentificationDetails_C300: C300,
	location_C328: C328,
	systemDetails1_C336: C336,
	originatorTypeCode_9972: C000,
	originatorDetails_C354: C354,
	originatorsAuthorityRequestCode_9904: C000,
	communicationNumber_3148: C000,
	partyIdIdentification_3039: C000) {

	self.systemDetails_C336 = systemDetails_C336
	self.originatorIdentificationDetails_C300 = originatorIdentificationDetails_C300
	self.location_C328 = location_C328
	self.systemDetails1_C336 = systemDetails1_C336
	self.originatorTypeCode_9972 = originatorTypeCode_9972
	self.originatorDetails_C354 = originatorDetails_C354
	self.originatorsAuthorityRequestCode_9904 = originatorsAuthorityRequestCode_9904
	self.communicationNumber_3148 = communicationNumber_3148
	self.partyIdIdentification_3039 = partyIdIdentification_3039

	}

func description () -> String {

	var descText = "ORG+"
		descEDISeg(&descText, items: systemDetails_C336)
		descEDISeg(&descText, items: originatorIdentificationDetails_C300)
		descEDISeg(&descText, items: location_C328)
		descEDISeg(&descText, items: systemDetails1_C336)
		descEDISeg(&descText, items: originatorTypeCode_9972)
		descEDISeg(&descText, items: originatorDetails_C354)
		descEDISeg(&descText, items: originatorsAuthorityRequestCode_9904)
		descEDISeg(&descText, items: communicationNumber_3148)
		descEDISeg(&descText, items: partyIdIdentification_3039)

	descText.endFinal()

	return descText
}

}

