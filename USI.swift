//
//  USI.swift					 // Update Service Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class USI: Segment
{
	var updateOsiDetails_C039: C039
	var updateSsrDetails_C038: [C038]


init(updateOsiDetails_C039: C039,
	updateSsrDetails_C038: [C038] = []) {

	self.updateOsiDetails_C039 = updateOsiDetails_C039
	self.updateSsrDetails_C038 = updateSsrDetails_C038

	}

func description () -> String {

	var descText = "USI+"
		descEDISeg(&descText, items: updateOsiDetails_C039)
		descEDISeg(&descText, items: updateSsrDetails_C038)

	descText.endFinal()

	return descText
}

}

