//
//  FDR.swift					 // Flight Details Response 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class FDR: Segment
{
	var outboundCarrierDetails_C013: C013
	var outboundFlightNumberDetails_C014: C014
	var departureDateAndTime_2281: C000
	var placeOfDepartureCoded_3215: C000
	var placeOfDestinationCoded_3259: C000
	var arrivalDateAndTime_2107: C000
	var outboundFlightContinuationIndicator_9856: C000
	var inboundTypeOfServiceIndicator_9857: C000
	var complexingFlightDetails_C041: C041
	var productDatetime_C310: [C310]


init(outboundCarrierDetails_C013: C013,
	outboundFlightNumberDetails_C014: C014,
	departureDateAndTime_2281: C000,
	placeOfDepartureCoded_3215: C000,
	placeOfDestinationCoded_3259: C000,
	arrivalDateAndTime_2107: C000,
	outboundFlightContinuationIndicator_9856: C000,
	inboundTypeOfServiceIndicator_9857: C000,
	complexingFlightDetails_C041: C041,
	productDatetime_C310: [C310] = []) {

	self.outboundCarrierDetails_C013 = outboundCarrierDetails_C013
	self.outboundFlightNumberDetails_C014 = outboundFlightNumberDetails_C014
	self.departureDateAndTime_2281 = departureDateAndTime_2281
	self.placeOfDepartureCoded_3215 = placeOfDepartureCoded_3215
	self.placeOfDestinationCoded_3259 = placeOfDestinationCoded_3259
	self.arrivalDateAndTime_2107 = arrivalDateAndTime_2107
	self.outboundFlightContinuationIndicator_9856 = outboundFlightContinuationIndicator_9856
	self.inboundTypeOfServiceIndicator_9857 = inboundTypeOfServiceIndicator_9857
	self.complexingFlightDetails_C041 = complexingFlightDetails_C041
	self.productDatetime_C310 = productDatetime_C310

	}

func description () -> String {

	var descText = "FDR+"
		descEDISeg(&descText, items: outboundCarrierDetails_C013)
		descEDISeg(&descText, items: outboundFlightNumberDetails_C014)
		descEDISeg(&descText, items: departureDateAndTime_2281)
		descEDISeg(&descText, items: placeOfDepartureCoded_3215)
		descEDISeg(&descText, items: placeOfDestinationCoded_3259)
		descEDISeg(&descText, items: arrivalDateAndTime_2107)
		descEDISeg(&descText, items: outboundFlightContinuationIndicator_9856)
		descEDISeg(&descText, items: inboundTypeOfServiceIndicator_9857)
		descEDISeg(&descText, items: complexingFlightDetails_C041)
		descEDISeg(&descText, items: productDatetime_C310)

	descText.endFinal()

	return descText
}

}

