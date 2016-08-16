//
//  FOP.swift					 // Form Of Payment 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class FOP: Segment
{
	var formOfPaymentDetails_C641: C641
	var formOfPaymentDetails1_C641: [C641]


init(formOfPaymentDetails_C641: C641,
	formOfPaymentDetails1_C641: [C641] = []) {

	self.formOfPaymentDetails_C641 = formOfPaymentDetails_C641
	self.formOfPaymentDetails1_C641 = formOfPaymentDetails1_C641

	}

func description () -> String {

	var descText = "FOP+"
		descEDISeg(&descText, items: formOfPaymentDetails_C641)
		descEDISeg(&descText, items: formOfPaymentDetails1_C641)

	descText.endFinal()

	return descText
}

}

