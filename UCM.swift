//
//  UCM.swift					 // Message Response 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class UCM: Segment
{
	var messageReferenceNumber_0062: C000
	var messageIdentifier_S009: S009
	var actionCoded_0083: C000
	var syntaxErrorCoded_0085: C000
	var segmentTagCoded_0013: C000
	var dataElementIdentification_S011: S011


init(messageReferenceNumber_0062: C000,
	messageIdentifier_S009: S009,
	actionCoded_0083: C000,
	syntaxErrorCoded_0085: C000,
	segmentTagCoded_0013: C000,
	dataElementIdentification_S011: S011) {

	self.messageReferenceNumber_0062 = messageReferenceNumber_0062
	self.messageIdentifier_S009 = messageIdentifier_S009
	self.actionCoded_0083 = actionCoded_0083
	self.syntaxErrorCoded_0085 = syntaxErrorCoded_0085
	self.segmentTagCoded_0013 = segmentTagCoded_0013
	self.dataElementIdentification_S011 = dataElementIdentification_S011

	}

func description () -> String {

	var descText = "UCM+"
		descEDISeg(&descText, items: messageReferenceNumber_0062)
		descEDISeg(&descText, items: messageIdentifier_S009)
		descEDISeg(&descText, items: actionCoded_0083)
		descEDISeg(&descText, items: syntaxErrorCoded_0085)
		descEDISeg(&descText, items: segmentTagCoded_0013)
		descEDISeg(&descText, items: dataElementIdentification_S011)

	descText.endFinal()

	return descText
}

}

