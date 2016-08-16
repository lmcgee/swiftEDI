//
//  ADT.swift					 // Action Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class ADT: Segment
{
	var processingInformation_C672: C672
	var reference_C673: [C673]


init(processingInformation_C672: C672,
	reference_C673: [C673] = []) {

	self.processingInformation_C672 = processingInformation_C672
	self.reference_C673 = reference_C673

	}

func description () -> String {

	var descText = "ADT+"
		descEDISeg(&descText, items: processingInformation_C672)
		descEDISeg(&descText, items: reference_C673)

	descText.endFinal()

	return descText
}

}

