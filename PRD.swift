//
//  PRD.swift					 // Passenger Reservation Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class PRD: Segment
{
	var classDetails_C023: C023
	var reservationStatus_9822: C000
	var passengerPartyReferenceDetails_C020: C020
	var passengerNameRecordLocator_9823: C000
	var passengerNameRecordLocator1_9823: C000
	var pnrOnBookingSystemDetails_C022: C022
	var ticketNumber_9811: C000


init(classDetails_C023: C023,
	reservationStatus_9822: C000,
	passengerPartyReferenceDetails_C020: C020,
	passengerNameRecordLocator_9823: C000,
	passengerNameRecordLocator1_9823: C000,
	pnrOnBookingSystemDetails_C022: C022,
	ticketNumber_9811: C000) {

	self.classDetails_C023 = classDetails_C023
	self.reservationStatus_9822 = reservationStatus_9822
	self.passengerPartyReferenceDetails_C020 = passengerPartyReferenceDetails_C020
	self.passengerNameRecordLocator_9823 = passengerNameRecordLocator_9823
	self.passengerNameRecordLocator1_9823 = passengerNameRecordLocator1_9823
	self.pnrOnBookingSystemDetails_C022 = pnrOnBookingSystemDetails_C022
	self.ticketNumber_9811 = ticketNumber_9811

	}

func description () -> String {

	var descText = "PRD+"
		descEDISeg(&descText, items: classDetails_C023)
		descEDISeg(&descText, items: reservationStatus_9822)
		descEDISeg(&descText, items: passengerPartyReferenceDetails_C020)
		descEDISeg(&descText, items: passengerNameRecordLocator_9823)
		descEDISeg(&descText, items: passengerNameRecordLocator1_9823)
		descEDISeg(&descText, items: pnrOnBookingSystemDetails_C022)
		descEDISeg(&descText, items: ticketNumber_9811)

	descText.endFinal()

	return descText
}

}

