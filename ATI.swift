//
//  ATI.swift					 // Tour Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class ATI: Segment
{
	var tourDetails_C993: C993
	var stopoverInformation_C994: [C994]

init(tourDetails_C993: C993,
	stopoverInformation_C994: [C994] = [],
	) {

	self.tourDetails_C993 = tourDetails_C993
	self.stopoverInformation_C994 = stopoverInformation_C994

	}

func description () -> String {

	var descText = "ATI+"
		descEDISeg(&descText, items: tourDetails_C993)
		descEDISeg(&descText, items: stopoverInformation_C994)

	descText.endFinal()

	return descText
}

}

