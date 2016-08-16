//
//  WAD.swift					 // Warning Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class WAD: Segment
{
	var warningDetails_C055: C055
	var warningDetails1_C055: [C055]


init(warningDetails_C055: C055,
	warningDetails1_C055: [C055] = []) {

	self.warningDetails_C055 = warningDetails_C055
	self.warningDetails1_C055 = warningDetails1_C055

	}

func description () -> String {

	var descText = "WAD+"
		descEDISeg(&descText, items: warningDetails_C055)
		descEDISeg(&descText, items: warningDetails1_C055)

	descText.endFinal()

	return descText
}

}

