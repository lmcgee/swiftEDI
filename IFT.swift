//
//  IFT.swift					 // Interactive Free Text 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class IFT: Segment
{
	var freeTextQualification_C346: C346
	var freeText_4440: [C999]]


init(freeTextQualification_C346: C346,
	freeText_4440: [C999]) {

	self.freeTextQualification_C346 = freeTextQualification_C346
	self.freeText_4440 = freeText_4440

	}

func description () -> String {

	var descText = "IFT+"
		descEDISeg(&descText, items: freeTextQualification_C346)
		descEDISeg(&descText, items: freeText_4440)

	descText.endFinal()

	return descText
}

}

