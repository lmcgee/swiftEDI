//
//  FSD.swift					 // Flight Segment Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class FSD: Segment
{
	var localBoardingTime_2804: C000
	var terminalOfDeparture_3801: C000
	var gateDescription_9870: C000
	var aircraftPosition_9853: C000
	var flightServiceDetails_C042: C042
	var flightDelayReasonCoded_9872: C000
	var freeText_4440: C000
	var processingStatusCode_9869: [C999]]


init(localBoardingTime_2804: C000,
	terminalOfDeparture_3801: C000,
	gateDescription_9870: C000,
	aircraftPosition_9853: C000,
	flightServiceDetails_C042: C042,
	flightDelayReasonCoded_9872: C000,
	freeText_4440: C000,
	processingStatusCode_9869: [C999]) {

	self.localBoardingTime_2804 = localBoardingTime_2804
	self.terminalOfDeparture_3801 = terminalOfDeparture_3801
	self.gateDescription_9870 = gateDescription_9870
	self.aircraftPosition_9853 = aircraftPosition_9853
	self.flightServiceDetails_C042 = flightServiceDetails_C042
	self.flightDelayReasonCoded_9872 = flightDelayReasonCoded_9872
	self.freeText_4440 = freeText_4440
	self.processingStatusCode_9869 = processingStatusCode_9869

	}

func description () -> String {

	var descText = "FSD+"
		descEDISeg(&descText, items: localBoardingTime_2804)
		descEDISeg(&descText, items: terminalOfDeparture_3801)
		descEDISeg(&descText, items: gateDescription_9870)
		descEDISeg(&descText, items: aircraftPosition_9853)
		descEDISeg(&descText, items: flightServiceDetails_C042)
		descEDISeg(&descText, items: flightDelayReasonCoded_9872)
		descEDISeg(&descText, items: freeText_4440)
		descEDISeg(&descText, items: processingStatusCode_9869)

	descText.endFinal()

	return descText
}

}

