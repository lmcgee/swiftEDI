//
//  SRC.swift					 // Segment Repetition Control 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class SRC: Segment
{
	var segmentRepetitionControlDetails_C678: [C678]


init(segmentRepetitionControlDetails_C678: [C678] = []) {

	self.segmentRepetitionControlDetails_C678 = segmentRepetitionControlDetails_C678

	}

func description () -> String {

	var descText = "SRC+"
		descEDISeg(&descText, items: segmentRepetitionControlDetails_C678)

	descText.endFinal()

	return descText
}

}

