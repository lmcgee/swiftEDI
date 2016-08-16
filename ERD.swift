//
//  ERD.swift					 // Error Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class ERD: Segment
{
	var errorInformation_C056: C056
	var errorInformation1_C056: [C056]


init(errorInformation_C056: C056,
	errorInformation1_C056: [C056] = []) {

	self.errorInformation_C056 = errorInformation_C056
	self.errorInformation1_C056 = errorInformation1_C056

	}

func description () -> String {

	var descText = "ERD+"
		descEDISeg(&descText, items: errorInformation_C056)
		descEDISeg(&descText, items: errorInformation1_C056)

	descText.endFinal()

	return descText
}

}

