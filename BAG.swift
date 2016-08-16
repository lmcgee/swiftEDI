//
//  BAG.swift					 // Baggage Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class BAG: Segment
{
	var baggageStatusDetails_C356: C356
	var bagtagDetails_C358: [C358]


init(baggageStatusDetails_C356: C356,
	bagtagDetails_C358: [C358] = []) {

	self.baggageStatusDetails_C356 = baggageStatusDetails_C356
	self.bagtagDetails_C358 = bagtagDetails_C358

	}

func description () -> String {

	var descText = "BAG+"
		descEDISeg(&descText, items: baggageStatusDetails_C356)
		descEDISeg(&descText, items: bagtagDetails_C358)

	descText.endFinal()

	return descText
}

}

