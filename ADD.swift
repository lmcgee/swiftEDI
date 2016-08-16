//
//  ADD.swift					 // Address Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class ADD: Segment
{
	var actionDetails_C031: C031
	var addressDetails_C032: C032
	var addressDetails1_C032: [C032]


init(actionDetails_C031: C031,
	addressDetails_C032: C032,
	addressDetails1_C032: [C032] = []) {

	self.actionDetails_C031 = actionDetails_C031
	self.addressDetails_C032 = addressDetails_C032
	self.addressDetails1_C032 = addressDetails1_C032

	}

func description () -> String {

	var descText = "ADD+"
		descEDISeg(&descText, items: actionDetails_C031)
		descEDISeg(&descText, items: addressDetails_C032)
		descEDISeg(&descText, items: addressDetails1_C032)

	descText.endFinal()

	return descText
}

}

