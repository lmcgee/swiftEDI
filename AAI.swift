//
//  AAI.swift					 // Accommodation Allocation Information 
//  Created by Larry McGee on Mon Aug 15 18:36:32 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class AAI: Segment
{
	var accommodationAllocationInformation_C997: C997
	var accommodationAllocationInformation1_C997: [C997]


init(accommodationAllocationInformation_C997: C997,
	accommodationAllocationInformation1_C997: [C997] = []) {

	self.accommodationAllocationInformation_C997 = accommodationAllocationInformation_C997
	self.accommodationAllocationInformation1_C997 = accommodationAllocationInformation1_C997
	

	}

func description () -> String {

	var descText = "AAI+"
		descEDISeg(&descText, items: accommodationAllocationInformation_C997)
		descEDISeg(&descText, items: accommodationAllocationInformation1_C997)

	descText.endFinal()

	return descText
}

}

