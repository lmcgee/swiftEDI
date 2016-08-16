//
//  LTS.swift					 // Long Text String 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class LTS: Segment
{
	var textStringDetails_9990: C000


init(textStringDetails_9990: C000) {

	self.textStringDetails_9990 = textStringDetails_9990

	}

func description () -> String {

	var descText = "LTS+"
		descEDISeg(&descText, items: textStringDetails_9990)

	descText.endFinal()

	return descText
}

}

