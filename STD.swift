//
//  STD.swift					 // Specific Traveller Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class STD: Segment
{
	var specificTravellerDetails_C684: [C684]


init(specificTravellerDetails_C684: [C684] = []) {

	self.specificTravellerDetails_C684 = specificTravellerDetails_C684

	}

func description () -> String {

	var descText = "STD+"
		descEDISeg(&descText, items: specificTravellerDetails_C684)

	descText.endFinal()

	return descText
}

}

