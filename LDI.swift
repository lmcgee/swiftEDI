//
//  LDI.swift					 // Load Details Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class LDI: Segment
{
	var cargoDetails_C352: C352
	var loadDetails_C353: C353


init(cargoDetails_C352: C352,
	loadDetails_C353: C353) {

	self.cargoDetails_C352 = cargoDetails_C352
	self.loadDetails_C353 = loadDetails_C353

	}

func description () -> String {

	var descText = "LDI+"
		descEDISeg(&descText, items: cargoDetails_C352)
		descEDISeg(&descText, items: loadDetails_C353)

	descText.endFinal()

	return descText
}

}

