//
//  TRF.swift					 // Traffic Restriction Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class TRF: Segment
{
	var trafficRestrictionDetails_C338: [C338]


init(trafficRestrictionDetails_C338: [C338] = []) {

	self.trafficRestrictionDetails_C338 = trafficRestrictionDetails_C338

	}

func description () -> String {

	var descText = "TRF+"
		descEDISeg(&descText, items: trafficRestrictionDetails_C338)

	descText.endFinal()

	return descText
}

}

