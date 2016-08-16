//
//  PAX.swift					 // Advanced Passenger Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class PAX: Segment
{
	var passengerApiDetails_C060: C060
	var documentId_C700: [C700]


init(passengerApiDetails_C060: C060,
	documentId_C700: [C700] = []) {

	self.passengerApiDetails_C060 = passengerApiDetails_C060
	self.documentId_C700 = documentId_C700

	}

func description () -> String {

	var descText = "PAX+"
		descEDISeg(&descText, items: passengerApiDetails_C060)
		descEDISeg(&descText, items: documentId_C700)

	descText.endFinal()

	return descText
}

}

