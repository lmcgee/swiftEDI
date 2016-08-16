//
//  UIT.swift					 // Interactive Message Trailer (Or Unt) 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class UIT: Segment
{
	var interactiveMessageReferenceNumber_0340: C000
	var numberOfSegmentsInAMessage_0074: C000


init(interactiveMessageReferenceNumber_0340: C000,
	numberOfSegmentsInAMessage_0074: C000) {

	self.interactiveMessageReferenceNumber_0340 = interactiveMessageReferenceNumber_0340
	self.numberOfSegmentsInAMessage_0074 = numberOfSegmentsInAMessage_0074

	}

func description () -> String {

	var descText = "UIT+"
		descEDISeg(&descText, items: interactiveMessageReferenceNumber_0340)
		descEDISeg(&descText, items: numberOfSegmentsInAMessage_0074)

	descText.endFinal()

	return descText
}

}

