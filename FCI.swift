//
//  FCI.swift					 // Fare Component Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class FCI: Segment
{
	var fareDetails_C980: C980
	var documentmessageNumber_1004: C000
	var documentmessageNumber1_1004: C000


init(fareDetails_C980: C980,
	documentmessageNumber_1004: C000,
	documentmessageNumber1_1004: C000) {

	self.fareDetails_C980 = fareDetails_C980
	self.documentmessageNumber_1004 = documentmessageNumber_1004
	self.documentmessageNumber1_1004 = documentmessageNumber1_1004

	}

func description () -> String {

	var descText = "FCI+"
		descEDISeg(&descText, items: fareDetails_C980)
		descEDISeg(&descText, items: documentmessageNumber_1004)
		descEDISeg(&descText, items: documentmessageNumber1_1004)

	descText.endFinal()

	return descText
}

}

