//
//  TFF.swift					 // Tariff Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class TFF: Segment
{
	var tariffInformation_C982: C982
	var rateInformation_C983: C983
	var associatedChargesInformation_C984: [C984]


init(tariffInformation_C982: C982,
	rateInformation_C983: C983,
	associatedChargesInformation_C984: [C984] = []) {

	self.tariffInformation_C982 = tariffInformation_C982
	self.rateInformation_C983 = rateInformation_C983
	self.associatedChargesInformation_C984 = associatedChargesInformation_C984

	}

func description () -> String {

	var descText = "TFF+"
		descEDISeg(&descText, items: tariffInformation_C982)
		descEDISeg(&descText, items: rateInformation_C983)
		descEDISeg(&descText, items: associatedChargesInformation_C984)

	descText.endFinal()

	return descText
}

}

