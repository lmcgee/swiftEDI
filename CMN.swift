//
//  CMN.swift					 // Commission Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class CMN: Segment
{
	var commissionDetails_C957: C957
	var commissionDetails1_C957: [C957]


init(commissionDetails_C957: C957,
	commissionDetails1_C957: [C957] = []) {

	self.commissionDetails_C957 = commissionDetails_C957
	self.commissionDetails1_C957 = commissionDetails1_C957

	}

func description () -> String {

	var descText = "CMN+"
		descEDISeg(&descText, items: commissionDetails_C957)
		descEDISeg(&descText, items: commissionDetails1_C957)

	descText.endFinal()

	return descText
}

}

