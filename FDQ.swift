//
//  FDQ.swift					 // Flight Details Query 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class FDQ: Segment
{
	var outboundCarrierDetails_C013: C013
	var outboundFlightNumberDetails_C014: C014
	var departureDateAndTime_2281: C000
	var placeOfDepartureCoded_3215: C000
	var placeOfDestinationCoded_3259: C000
	var outboundFlightContinuationIndicator_9856: C000
	var inboundCarrierDetails_C015: C015
	var inboundFlightNumberDetails_C016: C016
	var departureDateAndTime1_2281: C000
	var arrivalDateAndTime_2107: C000
	var placeOfDepartureCoded1_3215: C000
	var placeOfDestinationCoded1_3259: C000
	var terminalOfArrival_3803: C000
	var inboundTypeOfServiceIndicator_9857: C000
	var productDatetime_C310: [C310]


init(outboundCarrierDetails_C013: C013,
	outboundFlightNumberDetails_C014: C014,
	departureDateAndTime_2281: C000,
	placeOfDepartureCoded_3215: C000,
	placeOfDestinationCoded_3259: C000,
	outboundFlightContinuationIndicator_9856: C000,
	inboundCarrierDetails_C015: C015,
	inboundFlightNumberDetails_C016: C016,
	departureDateAndTime1_2281: C000,
	arrivalDateAndTime_2107: C000,
	placeOfDepartureCoded1_3215: C000,
	placeOfDestinationCoded1_3259: C000,
	terminalOfArrival_3803: C000,
	inboundTypeOfServiceIndicator_9857: C000,
	productDatetime_C310: [C310] = []) {

	self.outboundCarrierDetails_C013 = outboundCarrierDetails_C013
	self.outboundFlightNumberDetails_C014 = outboundFlightNumberDetails_C014
	self.departureDateAndTime_2281 = departureDateAndTime_2281
	self.placeOfDepartureCoded_3215 = placeOfDepartureCoded_3215
	self.placeOfDestinationCoded_3259 = placeOfDestinationCoded_3259
	self.outboundFlightContinuationIndicator_9856 = outboundFlightContinuationIndicator_9856
	self.inboundCarrierDetails_C015 = inboundCarrierDetails_C015
	self.inboundFlightNumberDetails_C016 = inboundFlightNumberDetails_C016
	self.departureDateAndTime1_2281 = departureDateAndTime1_2281
	self.arrivalDateAndTime_2107 = arrivalDateAndTime_2107
	self.placeOfDepartureCoded1_3215 = placeOfDepartureCoded1_3215
	self.placeOfDestinationCoded1_3259 = placeOfDestinationCoded1_3259
	self.terminalOfArrival_3803 = terminalOfArrival_3803
	self.inboundTypeOfServiceIndicator_9857 = inboundTypeOfServiceIndicator_9857
	self.productDatetime_C310 = productDatetime_C310

	}

func description () -> String {

	var descText = "FDQ+"
		descEDISeg(&descText, items: outboundCarrierDetails_C013)
		descEDISeg(&descText, items: outboundFlightNumberDetails_C014)
		descEDISeg(&descText, items: departureDateAndTime_2281)
		descEDISeg(&descText, items: placeOfDepartureCoded_3215)
		descEDISeg(&descText, items: placeOfDestinationCoded_3259)
		descEDISeg(&descText, items: outboundFlightContinuationIndicator_9856)
		descEDISeg(&descText, items: inboundCarrierDetails_C015)
		descEDISeg(&descText, items: inboundFlightNumberDetails_C016)
		descEDISeg(&descText, items: departureDateAndTime1_2281)
		descEDISeg(&descText, items: arrivalDateAndTime_2107)
		descEDISeg(&descText, items: placeOfDepartureCoded1_3215)
		descEDISeg(&descText, items: placeOfDestinationCoded1_3259)
		descEDISeg(&descText, items: terminalOfArrival_3803)
		descEDISeg(&descText, items: inboundTypeOfServiceIndicator_9857)
		descEDISeg(&descText, items: productDatetime_C310)

	descText.endFinal()

	return descText
}

}

