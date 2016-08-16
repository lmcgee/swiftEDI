//
//  SSR.swift					 // Special Requirements Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class SSR: Segment
{
	var specialRequirementsTypeDetails_C334: C334
	var specialRequirementsDataDetails_C332: [C332]


init(specialRequirementsTypeDetails_C334: C334,
	specialRequirementsDataDetails_C332: [C332] = []) {

	self.specialRequirementsTypeDetails_C334 = specialRequirementsTypeDetails_C334
	self.specialRequirementsDataDetails_C332 = specialRequirementsDataDetails_C332

	}

func description () -> String {

	var descText = "SSR+"
		descEDISeg(&descText, items: specialRequirementsTypeDetails_C334)
		descEDISeg(&descText, items: specialRequirementsDataDetails_C332)

	descText.endFinal()

	return descText
}

}

