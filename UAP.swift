//
//  UAP.swift					 // Update Api Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class UAP: Segment
{
	var actionDetails_C031: C031
	var passengerApiDetails_C060: C060
	var passengerContactData_C701: C701
	var documentId_C700: [C700]


init(actionDetails_C031: C031,
	passengerApiDetails_C060: C060,
	passengerContactData_C701: C701,
	documentId_C700: [C700] = []) {

	self.actionDetails_C031 = actionDetails_C031
	self.passengerApiDetails_C060 = passengerApiDetails_C060
	self.passengerContactData_C701 = passengerContactData_C701
	self.documentId_C700 = documentId_C700

	}

func description () -> String {

	var descText = "UAP+"
		descEDISeg(&descText, items: actionDetails_C031)
		descEDISeg(&descText, items: passengerApiDetails_C060)
		descEDISeg(&descText, items: passengerContactData_C701)
		descEDISeg(&descText, items: documentId_C700)

	descText.endFinal()

	return descText
}

}

