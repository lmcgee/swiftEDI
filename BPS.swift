//
//  BPS.swift					 // Boarding Pass Supplemental Information Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class BPS: Segment
{
	var localBoardingTime_2804: C000
	var stationInformation_C348: C348
	var stationInformation1_C348: C348
	var aircraftPosition_9853: C000
	var barCodeData_9855: C000
	var discountednonrevenuePassenger_9851: C000
	var flightServiceDetails_C042: C042
	var flightDelayReasonCoded_9872: C000
	var freeText_4440: C000


init(localBoardingTime_2804: C000,
	stationInformation_C348: C348,
	stationInformation1_C348: C348,
	aircraftPosition_9853: C000,
	barCodeData_9855: C000,
	discountednonrevenuePassenger_9851: C000,
	flightServiceDetails_C042: C042,
	flightDelayReasonCoded_9872: C000,
	freeText_4440: C000) {

	self.localBoardingTime_2804 = localBoardingTime_2804
	self.stationInformation_C348 = stationInformation_C348
	self.stationInformation1_C348 = stationInformation1_C348
	self.aircraftPosition_9853 = aircraftPosition_9853
	self.barCodeData_9855 = barCodeData_9855
	self.discountednonrevenuePassenger_9851 = discountednonrevenuePassenger_9851
	self.flightServiceDetails_C042 = flightServiceDetails_C042
	self.flightDelayReasonCoded_9872 = flightDelayReasonCoded_9872
	self.freeText_4440 = freeText_4440

	}

func description () -> String {

	var descText = "BPS+"
		descEDISeg(&descText, items: localBoardingTime_2804)
		descEDISeg(&descText, items: stationInformation_C348)
		descEDISeg(&descText, items: stationInformation1_C348)
		descEDISeg(&descText, items: aircraftPosition_9853)
		descEDISeg(&descText, items: barCodeData_9855)
		descEDISeg(&descText, items: discountednonrevenuePassenger_9851)
		descEDISeg(&descText, items: flightServiceDetails_C042)
		descEDISeg(&descText, items: flightDelayReasonCoded_9872)
		descEDISeg(&descText, items: freeText_4440)

	descText.endFinal()

	return descText
}

}

