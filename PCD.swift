//
//  PCD.swift					 // Passenger Connecting Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class PCD: Segment
{
	var outboundCarrierDetails_C013: C013
	var outboundFlightNumberDetails_C014: C014
	var departureDateAndTime_2281: C000
	var placeOfDestinationCoded_3259: C000
	var placeOfDepartureCoded_3215: C000
	var reservationBookingDesignator_9800: C000
	var reservationStatus_9822: C000
	var arrivalDateAndTime_2107: C000
	var productDetailsQualifier_9970: C000
	var productDetails_C304: [C304]


init(outboundCarrierDetails_C013: C013,
	outboundFlightNumberDetails_C014: C014,
	departureDateAndTime_2281: C000,
	placeOfDestinationCoded_3259: C000,
	placeOfDepartureCoded_3215: C000,
	reservationBookingDesignator_9800: C000,
	reservationStatus_9822: C000,
	arrivalDateAndTime_2107: C000,
	productDetailsQualifier_9970: C000,
	productDetails_C304: [C304] = []) {

	self.outboundCarrierDetails_C013 = outboundCarrierDetails_C013
	self.outboundFlightNumberDetails_C014 = outboundFlightNumberDetails_C014
	self.departureDateAndTime_2281 = departureDateAndTime_2281
	self.placeOfDestinationCoded_3259 = placeOfDestinationCoded_3259
	self.placeOfDepartureCoded_3215 = placeOfDepartureCoded_3215
	self.reservationBookingDesignator_9800 = reservationBookingDesignator_9800
	self.reservationStatus_9822 = reservationStatus_9822
	self.arrivalDateAndTime_2107 = arrivalDateAndTime_2107
	self.productDetailsQualifier_9970 = productDetailsQualifier_9970
	self.productDetails_C304 = productDetails_C304

	}

func description () -> String {

	var descText = "PCD+"
		descEDISeg(&descText, items: outboundCarrierDetails_C013)
		descEDISeg(&descText, items: outboundFlightNumberDetails_C014)
		descEDISeg(&descText, items: departureDateAndTime_2281)
		descEDISeg(&descText, items: placeOfDestinationCoded_3259)
		descEDISeg(&descText, items: placeOfDepartureCoded_3215)
		descEDISeg(&descText, items: reservationBookingDesignator_9800)
		descEDISeg(&descText, items: reservationStatus_9822)
		descEDISeg(&descText, items: arrivalDateAndTime_2107)
		descEDISeg(&descText, items: productDetailsQualifier_9970)
		descEDISeg(&descText, items: productDetails_C304)

	descText.endFinal()

	return descText
}

}

