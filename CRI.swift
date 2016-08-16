//
//  CRI.swift					 // Consumer Reference Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class CRI: Segment
{
	var consumerReferenceIdentification_C967: C967
	var consumerReferenceIdentification1_C967: C967


init(consumerReferenceIdentification_C967: C967,
	consumerReferenceIdentification1_C967: C967) {

	self.consumerReferenceIdentification_C967 = consumerReferenceIdentification_C967
	self.consumerReferenceIdentification1_C967 = consumerReferenceIdentification1_C967

	}

func description () -> String {

	var descText = "CRI+"
		descEDISeg(&descText, items: consumerReferenceIdentification_C967)
		descEDISeg(&descText, items: consumerReferenceIdentification1_C967)

	descText.endFinal()

	return descText
}

}

