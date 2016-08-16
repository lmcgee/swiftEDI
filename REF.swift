//
//  REF.swift					 // Reference Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class REF: Segment
{
	var referencingDetails_C653: [C653]


init(referencingDetails_C653: [C653] = []) {

	self.referencingDetails_C653 = referencingDetails_C653

	}

func description () -> String {

	var descText = "REF+"
		descEDISeg(&descText, items: referencingDetails_C653)

	descText.endFinal()

	return descText
}

}

