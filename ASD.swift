//
//  ASD.swift					 // Service Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class ASD: Segment
{
	var serviceDateTimeLocationInformation_C959: C959
	var serviceDateTimeLocationInformation1_C959: [C959]
	var tourDetails_C993: C993
	var stopoverInformation_C994: [C994]


init(serviceDateTimeLocationInformation_C959: C959,
	serviceDateTimeLocationInformation1_C959: [C959] = [],
	tourDetails_C993: C993,
	stopoverInformation_C994: [C994] = []) {

	self.serviceDateTimeLocationInformation_C959 = serviceDateTimeLocationInformation_C959
	self.serviceDateTimeLocationInformation1_C959 = serviceDateTimeLocationInformation1_C959
	self.tourDetails_C993 = tourDetails_C993
	self.stopoverInformation_C994 = stopoverInformation_C994

	}

func description () -> String {

	var descText = "ASD+"
		descEDISeg(&descText, items: serviceDateTimeLocationInformation_C959)
		descEDISeg(&descText, items: serviceDateTimeLocationInformation1_C959)
		descEDISeg(&descText, items: tourDetails_C993)
		descEDISeg(&descText, items: stopoverInformation_C994)

	descText.endFinal()

	return descText
}

}

