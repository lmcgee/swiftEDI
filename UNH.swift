//
//  UNH.swift					 // Message Header Or Uih 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class UNH: Segment
{
	var messageReferenceNumber_0062: C000
	var messageIdentifier_S009: S009
	var commonAccessReference_0068: C000
	var statusOfTheTransfer_S010: S010


init(messageReferenceNumber_0062: C000,
	messageIdentifier_S009: S009,
	commonAccessReference_0068: C000,
	statusOfTheTransfer_S010: S010) {

	self.messageReferenceNumber_0062 = messageReferenceNumber_0062
	self.messageIdentifier_S009 = messageIdentifier_S009
	self.commonAccessReference_0068 = commonAccessReference_0068
	self.statusOfTheTransfer_S010 = statusOfTheTransfer_S010

	}

func description () -> String {

	var descText = "UNH+"
		descEDISeg(&descText, items: messageReferenceNumber_0062)
		descEDISeg(&descText, items: messageIdentifier_S009)
		descEDISeg(&descText, items: commonAccessReference_0068)
		descEDISeg(&descText, items: statusOfTheTransfer_S010)

	descText.endFinal()

	return descText
}

}

