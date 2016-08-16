//
//  RCI.swift					 // Reservation Control Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class RCI: Segment
{
	var reservationControlInformation_C330: [C330]


init(reservationControlInformation_C330: [C330] = []) {

	self.reservationControlInformation_C330 = reservationControlInformation_C330

	}

func description () -> String {

	var descText = "RCI+"
		descEDISeg(&descText, items: reservationControlInformation_C330)

	descText.endFinal()

	return descText
}

}

