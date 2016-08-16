//
//  URD.swift					 // Update Reservations Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class URD: Segment
{
	var classDetails_C023: C023
	var reservationStatus_9822: C000
	var passengerNameRecordLocator_9823: C000
	var ticketNumber_9811: C000


init(classDetails_C023: C023,
	reservationStatus_9822: C000,
	passengerNameRecordLocator_9823: C000,
	ticketNumber_9811: C000) {

	self.classDetails_C023 = classDetails_C023
	self.reservationStatus_9822 = reservationStatus_9822
	self.passengerNameRecordLocator_9823 = passengerNameRecordLocator_9823
	self.ticketNumber_9811 = ticketNumber_9811

	}

func description () -> String {

	var descText = "URD+"
		descEDISeg(&descText, items: classDetails_C023)
		descEDISeg(&descText, items: reservationStatus_9822)
		descEDISeg(&descText, items: passengerNameRecordLocator_9823)
		descEDISeg(&descText, items: ticketNumber_9811)

	descText.endFinal()

	return descText
}

}

