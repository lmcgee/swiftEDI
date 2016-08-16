//
//  UIF.swift					 // Update Inbound Flight Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class UIF: Segment
{
	var inboundCarrierDetails_C015: C015
	var inboundFlightNumberDetails_C016: C016
	var departureDateAndTime_2281: C000
	var arrivalDateAndTime_2107: C000
	var placeOfDepartureCoded_3215: C000
	var placeOfDestinationCoded_3259: C000
	var terminalOfArrival_3803: C000
	var inboundTypeOfServiceIndicator_9857: C000


init(inboundCarrierDetails_C015: C015,
	inboundFlightNumberDetails_C016: C016,
	departureDateAndTime_2281: C000,
	arrivalDateAndTime_2107: C000,
	placeOfDepartureCoded_3215: C000,
	placeOfDestinationCoded_3259: C000,
	terminalOfArrival_3803: C000,
	inboundTypeOfServiceIndicator_9857: C000) {

	self.inboundCarrierDetails_C015 = inboundCarrierDetails_C015
	self.inboundFlightNumberDetails_C016 = inboundFlightNumberDetails_C016
	self.departureDateAndTime_2281 = departureDateAndTime_2281
	self.arrivalDateAndTime_2107 = arrivalDateAndTime_2107
	self.placeOfDepartureCoded_3215 = placeOfDepartureCoded_3215
	self.placeOfDestinationCoded_3259 = placeOfDestinationCoded_3259
	self.terminalOfArrival_3803 = terminalOfArrival_3803
	self.inboundTypeOfServiceIndicator_9857 = inboundTypeOfServiceIndicator_9857

	}

func description () -> String {

	var descText = "UIF+"
		descEDISeg(&descText, items: inboundCarrierDetails_C015)
		descEDISeg(&descText, items: inboundFlightNumberDetails_C016)
		descEDISeg(&descText, items: departureDateAndTime_2281)
		descEDISeg(&descText, items: arrivalDateAndTime_2107)
		descEDISeg(&descText, items: placeOfDepartureCoded_3215)
		descEDISeg(&descText, items: placeOfDestinationCoded_3259)
		descEDISeg(&descText, items: terminalOfArrival_3803)
		descEDISeg(&descText, items: inboundTypeOfServiceIndicator_9857)

	descText.endFinal()

	return descText
}

}

