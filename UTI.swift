//
//  UTI.swift					 // Update Bagtag Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class UTI: Segment
{
	var updateBagTagDetails_C037: C037
	var updateBagtagStubInformation_C695: [C695]


init(updateBagTagDetails_C037: C037,
	updateBagtagStubInformation_C695: [C695] = []) {

	self.updateBagTagDetails_C037 = updateBagTagDetails_C037
	self.updateBagtagStubInformation_C695 = updateBagtagStubInformation_C695

	}

func description () -> String {

	var descText = "UTI+"
		descEDISeg(&descText, items: updateBagTagDetails_C037)
		descEDISeg(&descText, items: updateBagtagStubInformation_C695)

	descText.endFinal()

	return descText
}

}

