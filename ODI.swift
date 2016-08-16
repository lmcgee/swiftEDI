//
//  ODI.swift					 // Origin And Destination Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class ODI: Segment
{
	var placelocationIdentification_3225: [C999]]


init(placelocationIdentification_3225: [C999]) {

	self.placelocationIdentification_3225 = placelocationIdentification_3225

	}

func description () -> String {

	var descText = "ODI+"
		descEDISeg(&descText, items: placelocationIdentification_3225)

	descText.endFinal()

	return descText
}

}

