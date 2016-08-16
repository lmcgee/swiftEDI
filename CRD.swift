//
//  CRD.swift					 // Cancel Request Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class CRD: Segment
{
	var reasonForCancelCoded_9859: C000
	var freeText_4440: C000
	var typeOfCancel_9860: C000


init(reasonForCancelCoded_9859: C000,
	freeText_4440: C000,
	typeOfCancel_9860: C000) {

	self.reasonForCancelCoded_9859 = reasonForCancelCoded_9859
	self.freeText_4440 = freeText_4440
	self.typeOfCancel_9860 = typeOfCancel_9860

	}

func description () -> String {

	var descText = "CRD+"
		descEDISeg(&descText, items: reasonForCancelCoded_9859)
		descEDISeg(&descText, items: freeText_4440)
		descEDISeg(&descText, items: typeOfCancel_9860)

	descText.endFinal()

	return descText
}

}

