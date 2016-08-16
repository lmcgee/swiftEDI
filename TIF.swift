//
//  TIF.swift					 // Traveller Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class TIF: Segment
{
	var travellerSurnameInformation_C322: C322
	var travellerDetails_C324: [C324]


init(travellerSurnameInformation_C322: C322,
	travellerDetails_C324: [C324] = []) {

	self.travellerSurnameInformation_C322 = travellerSurnameInformation_C322
	self.travellerDetails_C324 = travellerDetails_C324

	}

func description () -> String {

	var descText = "TIF+"
		descEDISeg(&descText, items: travellerSurnameInformation_C322)
		descEDISeg(&descText, items: travellerDetails_C324)

	descText.endFinal()

	return descText
}

}

