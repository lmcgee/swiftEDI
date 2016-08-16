//
//  DUM.swift					 // Dummy Segment 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class DUM: Segment
{
	var dummySegmentDummyDataItem_0000: C000


init(dummySegmentDummyDataItem_0000: C000) {

	self.dummySegmentDummyDataItem_0000 = dummySegmentDummyDataItem_0000

	}

func description () -> String {

	var descText = "DUM+"
		descEDISeg(&descText, items: dummySegmentDummyDataItem_0000)

	descText.endFinal()

	return descText
}

}

