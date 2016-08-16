//
//  STX.swift					 // Status Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class STX: Segment
{
	var statusDetails_C656: C656
	var statusDetails1_C656: [C656]


init(statusDetails_C656: C656,
	statusDetails1_C656: [C656] = []) {

	self.statusDetails_C656 = statusDetails_C656
	self.statusDetails1_C656 = statusDetails1_C656

	}

func description () -> String {

	var descText = "STX+"
		descEDISeg(&descText, items: statusDetails_C656)
		descEDISeg(&descText, items: statusDetails1_C656)

	descText.endFinal()

	return descText
}

}

