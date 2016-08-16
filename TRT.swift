//
//  TRT.swift					 // Traveller Related Text 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class TRT: Segment
{
	var travellerRelatedText_C323: [C323]


init(travellerRelatedText_C323: [C323] = []) {

	self.travellerRelatedText_C323 = travellerRelatedText_C323

	}

func description () -> String {

	var descText = "TRT+"
		descEDISeg(&descText, items: travellerRelatedText_C323)

	descText.endFinal()

	return descText
}

}

