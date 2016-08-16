//
//  PMT.swift					 // Payment Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class PMT: Segment
{
	var paymentDetails_C977: C977
	var creditCardInformation_C978: C978


init(paymentDetails_C977: C977,
	creditCardInformation_C978: C978) {

	self.paymentDetails_C977 = paymentDetails_C977
	self.creditCardInformation_C978 = creditCardInformation_C978

	}

func description () -> String {

	var descText = "PMT+"
		descEDISeg(&descText, items: paymentDetails_C977)
		descEDISeg(&descText, items: creditCardInformation_C978)

	descText.endFinal()

	return descText
}

}

