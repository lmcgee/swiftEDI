//
//  ITM.swift					 // Item Number 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class ITM: Segment
{
	var itemNumberIdentification_C212: C212
	var itemNumberIdentification1_C212: [C212]


init(itemNumberIdentification_C212: C212,
	itemNumberIdentification1_C212: [C212] = []) {

	self.itemNumberIdentification_C212 = itemNumberIdentification_C212
	self.itemNumberIdentification1_C212 = itemNumberIdentification1_C212

	}

func description () -> String {

	var descText = "ITM+"
		descEDISeg(&descText, items: itemNumberIdentification_C212)
		descEDISeg(&descText, items: itemNumberIdentification1_C212)

	descText.endFinal()

	return descText
}

}

