//
//  SDT.swift					 // Selection Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class SDT: Segment
{
	var selectionDetailsInformation_C660: C660
	var selectionDetailsInformation1_C660: [C660]


init(selectionDetailsInformation_C660: C660,
	selectionDetailsInformation1_C660: [C660] = []) {

	self.selectionDetailsInformation_C660 = selectionDetailsInformation_C660
	self.selectionDetailsInformation1_C660 = selectionDetailsInformation1_C660

	}

func description () -> String {

	var descText = "SDT+"
		descEDISeg(&descText, items: selectionDetailsInformation_C660)
		descEDISeg(&descText, items: selectionDetailsInformation1_C660)

	descText.endFinal()

	return descText
}

}

