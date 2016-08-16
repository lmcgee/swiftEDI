//
//  TAI.swift					 // Ticketing Agent Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class TAI: Segment
{
	var companyIdentificationNumber_9996: C000
	var internalIdentificationDetails_C642: [C642]


init(companyIdentificationNumber_9996: C000,
	internalIdentificationDetails_C642: [C642] = []) {

	self.companyIdentificationNumber_9996 = companyIdentificationNumber_9996
	self.internalIdentificationDetails_C642 = internalIdentificationDetails_C642

	}

func description () -> String {

	var descText = "TAI+"
		descEDISeg(&descText, items: companyIdentificationNumber_9996)
		descEDISeg(&descText, items: internalIdentificationDetails_C642)

	descText.endFinal()

	return descText
}

}

