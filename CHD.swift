//
//  CHD.swift					 // Cascading Host Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class CHD: Segment
{
	var placeOfOriginOfARequest_C059: C059
	var outboundCarrierDetails_C013: C013
	var outboundFlightNumberDetails_C014: C014
	var departureDateAndTime_2281: C000
	var placeOfDepartureCoded_3215: C000
	var placeOfDestinationCoded_3259: C000
	var outboundFlightContinuationIndicator_9856: C000
	var maximumNumberOfHostsAllowed_9802: C000
	var hostDefinition_C696: [C696]


init(placeOfOriginOfARequest_C059: C059,
	outboundCarrierDetails_C013: C013,
	outboundFlightNumberDetails_C014: C014,
	departureDateAndTime_2281: C000,
	placeOfDepartureCoded_3215: C000,
	placeOfDestinationCoded_3259: C000,
	outboundFlightContinuationIndicator_9856: C000,
	maximumNumberOfHostsAllowed_9802: C000,
	hostDefinition_C696: [C696] = []) {

	self.placeOfOriginOfARequest_C059 = placeOfOriginOfARequest_C059
	self.outboundCarrierDetails_C013 = outboundCarrierDetails_C013
	self.outboundFlightNumberDetails_C014 = outboundFlightNumberDetails_C014
	self.departureDateAndTime_2281 = departureDateAndTime_2281
	self.placeOfDepartureCoded_3215 = placeOfDepartureCoded_3215
	self.placeOfDestinationCoded_3259 = placeOfDestinationCoded_3259
	self.outboundFlightContinuationIndicator_9856 = outboundFlightContinuationIndicator_9856
	self.maximumNumberOfHostsAllowed_9802 = maximumNumberOfHostsAllowed_9802
	self.hostDefinition_C696 = hostDefinition_C696

	}

func description () -> String {

	var descText = "CHD+"
		descEDISeg(&descText, items: placeOfOriginOfARequest_C059)
		descEDISeg(&descText, items: outboundCarrierDetails_C013)
		descEDISeg(&descText, items: outboundFlightNumberDetails_C014)
		descEDISeg(&descText, items: departureDateAndTime_2281)
		descEDISeg(&descText, items: placeOfDepartureCoded_3215)
		descEDISeg(&descText, items: placeOfDestinationCoded_3259)
		descEDISeg(&descText, items: outboundFlightContinuationIndicator_9856)
		descEDISeg(&descText, items: maximumNumberOfHostsAllowed_9802)
		descEDISeg(&descText, items: hostDefinition_C696)

	descText.endFinal()

	return descText
}

}

