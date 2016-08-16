//
//  UNT.swift					 // Message Trailer Or Uit 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class UNT: Segment
{
	var numberOfSegmentsInAMessage_0074: C000
	var messageReferenceNumber_0062: C000


init(numberOfSegmentsInAMessage_0074: C000,
	messageReferenceNumber_0062: C000) {

	self.numberOfSegmentsInAMessage_0074 = numberOfSegmentsInAMessage_0074
	self.messageReferenceNumber_0062 = messageReferenceNumber_0062

	}

func description () -> String {

	var descText = "UNT+"
		descEDISeg(&descText, items: numberOfSegmentsInAMessage_0074)
		descEDISeg(&descText, items: messageReferenceNumber_0062)

	descText.endFinal()

	return descText
}

}

