//
//  MON.swift					 // Monetary Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class MON: Segment
{
	var monetaryInformation_C663: [C663]


init(monetaryInformation_C663: [C663] = []) {

	self.monetaryInformation_C663 = monetaryInformation_C663

	}

func description () -> String {

	var descText = "MON+"
		descEDISeg(&descText, items: monetaryInformation_C663)

	descText.endFinal()

	return descText
}

}

