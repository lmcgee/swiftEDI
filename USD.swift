//
//  USD.swift					 // Update Seat Request Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class USD: Segment
{
	var genericSeatRequestDetails_C024: C024
	var specificSeat_9809: C000
	var seatRangeRequestDetails_C025: C025
	var placeOfDepartureCoded_3215: C000
	var placeOfDestinationCoded_3259: C000
	var updateSeatAdjustmentDetails_C034: C034


init(genericSeatRequestDetails_C024: C024,
	specificSeat_9809: C000,
	seatRangeRequestDetails_C025: C025,
	placeOfDepartureCoded_3215: C000,
	placeOfDestinationCoded_3259: C000,
	updateSeatAdjustmentDetails_C034: C034) {

	self.genericSeatRequestDetails_C024 = genericSeatRequestDetails_C024
	self.specificSeat_9809 = specificSeat_9809
	self.seatRangeRequestDetails_C025 = seatRangeRequestDetails_C025
	self.placeOfDepartureCoded_3215 = placeOfDepartureCoded_3215
	self.placeOfDestinationCoded_3259 = placeOfDestinationCoded_3259
	self.updateSeatAdjustmentDetails_C034 = updateSeatAdjustmentDetails_C034

	}

func description () -> String {

	var descText = "USD+"
		descEDISeg(&descText, items: genericSeatRequestDetails_C024)
		descEDISeg(&descText, items: specificSeat_9809)
		descEDISeg(&descText, items: seatRangeRequestDetails_C025)
		descEDISeg(&descText, items: placeOfDepartureCoded_3215)
		descEDISeg(&descText, items: placeOfDestinationCoded_3259)
		descEDISeg(&descText, items: updateSeatAdjustmentDetails_C034)

	descText.endFinal()

	return descText
}

}

