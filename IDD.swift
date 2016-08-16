//
//  IDD.swift					 // Identification Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class IDD: Segment
{
	var multipleIdentificationNumbers_C669: C669
	var dateAndTimeDetails_C688: C688
	var dateAndTimeDetails1_C688: C688
	var placelocationIdentification_3225: C000
	var placelocationIdentification1_3225: C000


init(multipleIdentificationNumbers_C669: C669,
	dateAndTimeDetails_C688: C688,
	dateAndTimeDetails1_C688: C688,
	placelocationIdentification_3225: C000,
	placelocationIdentification1_3225: C000) {

	self.multipleIdentificationNumbers_C669 = multipleIdentificationNumbers_C669
	self.dateAndTimeDetails_C688 = dateAndTimeDetails_C688
	self.dateAndTimeDetails1_C688 = dateAndTimeDetails1_C688
	self.placelocationIdentification_3225 = placelocationIdentification_3225
	self.placelocationIdentification1_3225 = placelocationIdentification1_3225

	}

func description () -> String {

	var descText = "IDD+"
		descEDISeg(&descText, items: multipleIdentificationNumbers_C669)
		descEDISeg(&descText, items: dateAndTimeDetails_C688)
		descEDISeg(&descText, items: dateAndTimeDetails1_C688)
		descEDISeg(&descText, items: placelocationIdentification_3225)
		descEDISeg(&descText, items: placelocationIdentification1_3225)

	descText.endFinal()

	return descText
}

}

