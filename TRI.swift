//
//  TRI.swift					 // Traveller Reference Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class TRI: Segment
{
	var referenceQualification_C670: C670
	var travellerIdentification_C671: [C671]


init(referenceQualification_C670: C670,
	travellerIdentification_C671: [C671] = []) {

	self.referenceQualification_C670 = referenceQualification_C670
	self.travellerIdentification_C671 = travellerIdentification_C671

	}

func description () -> String {

	var descText = "TRI+"
		descEDISeg(&descText, items: referenceQualification_C670)
		descEDISeg(&descText, items: travellerIdentification_C671)

	descText.endFinal()

	return descText
}

}

