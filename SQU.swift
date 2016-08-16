//
//  SQU.swift					 // Sub Queue Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class SQU: Segment
{
	var subQueueInformationDetails_C988: C988
	var subQueueInformationDetails1_C988: [C988]


init(subQueueInformationDetails_C988: C988,
	subQueueInformationDetails1_C988: [C988] = []) {

	self.subQueueInformationDetails_C988 = subQueueInformationDetails_C988
	self.subQueueInformationDetails1_C988 = subQueueInformationDetails1_C988

	}

func description () -> String {

	var descText = "SQU+"
		descEDISeg(&descText, items: subQueueInformationDetails_C988)
		descEDISeg(&descText, items: subQueueInformationDetails1_C988)

	descText.endFinal()

	return descText
}

}

