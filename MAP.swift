//
//  MAP.swift					 // Messageapplicationproduct Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class MAP: Segment
{
	var instructionInformation_C654: C654
	var companyIdentification_9906: C000
	var messageapplicationproductInformation_C655: [C655]


init(instructionInformation_C654: C654,
	companyIdentification_9906: C000,
	messageapplicationproductInformation_C655: [C655] = []) {

	self.instructionInformation_C654 = instructionInformation_C654
	self.companyIdentification_9906 = companyIdentification_9906
	self.messageapplicationproductInformation_C655 = messageapplicationproductInformation_C655

	}

func description () -> String {

	var descText = "MAP+"
		descEDISeg(&descText, items: instructionInformation_C654)
		descEDISeg(&descText, items: companyIdentification_9906)
		descEDISeg(&descText, items: messageapplicationproductInformation_C655)

	descText.endFinal()

	return descText
}

}

