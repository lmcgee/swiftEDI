//
//  EQN.swift					 // Number Of Units 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class EQN: Segment
{
	var numberOfUnitDetails_C523: C523
	var numberOfUnitDetails1_C523: [C523]


init(numberOfUnitDetails_C523: C523,
	numberOfUnitDetails1_C523: [C523] = []) {

	self.numberOfUnitDetails_C523 = numberOfUnitDetails_C523
	self.numberOfUnitDetails1_C523 = numberOfUnitDetails1_C523

	}

func description () -> String {

	var descText = "EQN+"
		descEDISeg(&descText, items: numberOfUnitDetails_C523)
		descEDISeg(&descText, items: numberOfUnitDetails1_C523)

	descText.endFinal()

	return descText
}

}

