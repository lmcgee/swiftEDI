//
//  SPD.swift					 // Select Personal Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class SPD: Segment
{
	var passengerSelectionDetails_C046: C046
	var seatDetails_C043: C043
	var paxIdDetailsInRespondingSystem_C692: C692
	var paxIdDetailsInQueryingSystem_C690: C690
	var boardingSecurityCodeDetails_C045: C045
	var passengerNameRecordLocator_9823: C000
	var passengerNameRecordLocator1_9823: C000
	var pnrOnBookingSystemDetails_C022: C022
	var bagTagSelectionDetails_C057: C057
	var ticketNumber_9811: C000
	var paxIdDetailsInThirdPartySystem_C691: C691


init(passengerSelectionDetails_C046: C046,
	seatDetails_C043: C043,
	paxIdDetailsInRespondingSystem_C692: C692,
	paxIdDetailsInQueryingSystem_C690: C690,
	boardingSecurityCodeDetails_C045: C045,
	passengerNameRecordLocator_9823: C000,
	passengerNameRecordLocator1_9823: C000,
	pnrOnBookingSystemDetails_C022: C022,
	bagTagSelectionDetails_C057: C057,
	ticketNumber_9811: C000,
	paxIdDetailsInThirdPartySystem_C691: C691) {

	self.passengerSelectionDetails_C046 = passengerSelectionDetails_C046
	self.seatDetails_C043 = seatDetails_C043
	self.paxIdDetailsInRespondingSystem_C692 = paxIdDetailsInRespondingSystem_C692
	self.paxIdDetailsInQueryingSystem_C690 = paxIdDetailsInQueryingSystem_C690
	self.boardingSecurityCodeDetails_C045 = boardingSecurityCodeDetails_C045
	self.passengerNameRecordLocator_9823 = passengerNameRecordLocator_9823
	self.passengerNameRecordLocator1_9823 = passengerNameRecordLocator1_9823
	self.pnrOnBookingSystemDetails_C022 = pnrOnBookingSystemDetails_C022
	self.bagTagSelectionDetails_C057 = bagTagSelectionDetails_C057
	self.ticketNumber_9811 = ticketNumber_9811
	self.paxIdDetailsInThirdPartySystem_C691 = paxIdDetailsInThirdPartySystem_C691

	}

func description () -> String {

	var descText = "SPD+"
		descEDISeg(&descText, items: passengerSelectionDetails_C046)
		descEDISeg(&descText, items: seatDetails_C043)
		descEDISeg(&descText, items: paxIdDetailsInRespondingSystem_C692)
		descEDISeg(&descText, items: paxIdDetailsInQueryingSystem_C690)
		descEDISeg(&descText, items: boardingSecurityCodeDetails_C045)
		descEDISeg(&descText, items: passengerNameRecordLocator_9823)
		descEDISeg(&descText, items: passengerNameRecordLocator1_9823)
		descEDISeg(&descText, items: pnrOnBookingSystemDetails_C022)
		descEDISeg(&descText, items: bagTagSelectionDetails_C057)
		descEDISeg(&descText, items: ticketNumber_9811)
		descEDISeg(&descText, items: paxIdDetailsInThirdPartySystem_C691)

	descText.endFinal()

	return descText
}

}

