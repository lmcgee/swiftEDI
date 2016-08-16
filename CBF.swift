//
//  CBF.swift					 // Cabin Facilities 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class CBF: Segment
{
	var rowLocationQualifier_9976: C000
	var cabinFacilitiesDetails_C340: C340
	var cabinFacilitiesDetails1_C340: [C340]


init(rowLocationQualifier_9976: C000,
	cabinFacilitiesDetails_C340: C340,
	cabinFacilitiesDetails1_C340: [C340] = []) {

	self.rowLocationQualifier_9976 = rowLocationQualifier_9976
	self.cabinFacilitiesDetails_C340 = cabinFacilitiesDetails_C340
	self.cabinFacilitiesDetails1_C340 = cabinFacilitiesDetails1_C340

	}

func description () -> String {

	var descText = "CBF+"
		descEDISeg(&descText, items: rowLocationQualifier_9976)
		descEDISeg(&descText, items: cabinFacilitiesDetails_C340)
		descEDISeg(&descText, items: cabinFacilitiesDetails1_C340)

	descText.endFinal()

	return descText
}

}

