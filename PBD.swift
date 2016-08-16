//
//  PBD.swift					 // Passenger Baggage Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class PBD: Segment
{
	var checkedBaggageDetails_C027: C027
	var handBaggageDetails_C028: C028
	var baggageReferenceDetails_C686: C686
	var bagTagDetails_C029: [C029]


init(checkedBaggageDetails_C027: C027,
	handBaggageDetails_C028: C028,
	baggageReferenceDetails_C686: C686,
	bagTagDetails_C029: [C029] = []) {

	self.checkedBaggageDetails_C027 = checkedBaggageDetails_C027
	self.handBaggageDetails_C028 = handBaggageDetails_C028
	self.baggageReferenceDetails_C686 = baggageReferenceDetails_C686
	self.bagTagDetails_C029 = bagTagDetails_C029

	}

func description () -> String {

	var descText = "PBD+"
		descEDISeg(&descText, items: checkedBaggageDetails_C027)
		descEDISeg(&descText, items: handBaggageDetails_C028)
		descEDISeg(&descText, items: baggageReferenceDetails_C686)
		descEDISeg(&descText, items: bagTagDetails_C029)

	descText.endFinal()

	return descText
}

}

