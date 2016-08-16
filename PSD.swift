//
//  PSD.swift					 // Passenger Seat Request Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class PSD: Segment
{
	var genericSeatRequestDetails_C024: C024
	var specificSeat_9809: C000
	var seatRangeRequestDetails_C025: C025
	var seatAdjustmentDetails_C026: C026


init(genericSeatRequestDetails_C024: C024,
	specificSeat_9809: C000,
	seatRangeRequestDetails_C025: C025,
	seatAdjustmentDetails_C026: C026) {

	self.genericSeatRequestDetails_C024 = genericSeatRequestDetails_C024
	self.specificSeat_9809 = specificSeat_9809
	self.seatRangeRequestDetails_C025 = seatRangeRequestDetails_C025
	self.seatAdjustmentDetails_C026 = seatAdjustmentDetails_C026

	}

func description () -> String {

	var descText = "PSD+"
		descEDISeg(&descText, items: genericSeatRequestDetails_C024)
		descEDISeg(&descText, items: specificSeat_9809)
		descEDISeg(&descText, items: seatRangeRequestDetails_C025)
		descEDISeg(&descText, items: seatAdjustmentDetails_C026)

	descText.endFinal()

	return descText
}

}

