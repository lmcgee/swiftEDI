//
//  DAT.swift					 // Date And Time Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class DAT: Segment
{
	var dateAndTimeDetails_C688: [C688]


init(dateAndTimeDetails_C688: [C688] = []) {

	self.dateAndTimeDetails_C688 = dateAndTimeDetails_C688

	}

func description () -> String {

	var descText = "DAT+"
		descEDISeg(&descText, items: dateAndTimeDetails_C688)

	descText.endFinal()

	return descText
}

}

