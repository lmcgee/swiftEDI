//
//  TBD.swift					 // Traveller Baggage Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class TBD: Segment
{
	var statusCoded_4405: C000
	var baggageDetails_C675: C675
	var baggageDetails1_C675: C675
	var baggageReferenceDetails_C686: C686
	var bagtagDetails_C358: [C358]


init(statusCoded_4405: C000,
	baggageDetails_C675: C675,
	baggageDetails1_C675: C675,
	baggageReferenceDetails_C686: C686,
	bagtagDetails_C358: [C358] = []) {

	self.statusCoded_4405 = statusCoded_4405
	self.baggageDetails_C675 = baggageDetails_C675
	self.baggageDetails1_C675 = baggageDetails1_C675
	self.baggageReferenceDetails_C686 = baggageReferenceDetails_C686
	self.bagtagDetails_C358 = bagtagDetails_C358

	}

func description () -> String {

	var descText = "TBD+"
		descEDISeg(&descText, items: statusCoded_4405)
		descEDISeg(&descText, items: baggageDetails_C675)
		descEDISeg(&descText, items: baggageDetails1_C675)
		descEDISeg(&descText, items: baggageReferenceDetails_C686)
		descEDISeg(&descText, items: bagtagDetails_C358)

	descText.endFinal()

	return descText
}

}

