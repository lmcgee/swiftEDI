//
//  PAP.swift					 // Passenger Api Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class PAP: Segment
{
	var passengerApiDetails_C060: C060
	var passengerContactData_C701: C701
	var documentId_C700: [C700]


init(passengerApiDetails_C060: C060,
	passengerContactData_C701: C701,
	documentId_C700: [C700] = []) {

	self.passengerApiDetails_C060 = passengerApiDetails_C060
	self.passengerContactData_C701 = passengerContactData_C701
	self.documentId_C700 = documentId_C700

	}

func description () -> String {

	var descText = "PAP+"
		descEDISeg(&descText, items: passengerApiDetails_C060)
		descEDISeg(&descText, items: passengerContactData_C701)
		descEDISeg(&descText, items: documentId_C700)

	descText.endFinal()

	return descText
}

}

