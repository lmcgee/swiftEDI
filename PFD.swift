//
//  PFD.swift					 // Passenger Flight Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class PFD: Segment
{
	var seatDetails_C043: C043
	var seatDefinitionDetails_C044: C044
	var boardingSecurityCodeDetails_C045: C045
	var issuereissueBoardingPassIndicator_9850: C000
	var barCodeData_9855: C000
	var discountednonrevenuePassenger_9851: C000
	var seatDetails1_C043: [C043]
	var seatDefinitionDetails1_C044: [C044]


init(seatDetails_C043: C043,
	seatDefinitionDetails_C044: C044,
	boardingSecurityCodeDetails_C045: C045,
	issuereissueBoardingPassIndicator_9850: C000,
	barCodeData_9855: C000,
	discountednonrevenuePassenger_9851: C000,
	seatDetails1_C043: [C043] = [],
	seatDefinitionDetails1_C044: [C044] = []) {

	self.seatDetails_C043 = seatDetails_C043
	self.seatDefinitionDetails_C044 = seatDefinitionDetails_C044
	self.boardingSecurityCodeDetails_C045 = boardingSecurityCodeDetails_C045
	self.issuereissueBoardingPassIndicator_9850 = issuereissueBoardingPassIndicator_9850
	self.barCodeData_9855 = barCodeData_9855
	self.discountednonrevenuePassenger_9851 = discountednonrevenuePassenger_9851
	self.seatDetails1_C043 = seatDetails1_C043
	self.seatDefinitionDetails1_C044 = seatDefinitionDetails1_C044

	}

func description () -> String {

	var descText = "PFD+"
		descEDISeg(&descText, items: seatDetails_C043)
		descEDISeg(&descText, items: seatDefinitionDetails_C044)
		descEDISeg(&descText, items: boardingSecurityCodeDetails_C045)
		descEDISeg(&descText, items: issuereissueBoardingPassIndicator_9850)
		descEDISeg(&descText, items: barCodeData_9855)
		descEDISeg(&descText, items: discountednonrevenuePassenger_9851)
		descEDISeg(&descText, items: seatDetails1_C043)
		descEDISeg(&descText, items: seatDefinitionDetails1_C044)

	descText.endFinal()

	return descText
}

}

