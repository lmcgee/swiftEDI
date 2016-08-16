//
//  BTI.swift					 // Bagtag Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class BTI: Segment
{
	var bagTagDetails_C029: C029
	var bagtagStubInformation_C693: [C693]


init(bagTagDetails_C029: C029,
	bagtagStubInformation_C693: [C693] = []) {

	self.bagTagDetails_C029 = bagTagDetails_C029
	self.bagtagStubInformation_C693 = bagtagStubInformation_C693

	}

func description () -> String {

	var descText = "BTI+"
		descEDISeg(&descText, items: bagTagDetails_C029)
		descEDISeg(&descText, items: bagtagStubInformation_C693)

	descText.endFinal()

	return descText
}

}

