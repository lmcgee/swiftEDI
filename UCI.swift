//
//  UCI.swift					 // Interchange Response 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class UCI: Segment
{
	var interchangeControlReference_0020: C000
	var interchangeSender_S002: S002
	var interchangeRecipient_S003: S003
	var actionCoded_0083: C000
	var syntaxErrorCoded_0085: C000
	var segmentTagCoded_0013: C000
	var dataElementIdentification_S011: S011


init(interchangeControlReference_0020: C000,
	interchangeSender_S002: S002,
	interchangeRecipient_S003: S003,
	actionCoded_0083: C000,
	syntaxErrorCoded_0085: C000,
	segmentTagCoded_0013: C000,
	dataElementIdentification_S011: S011) {

	self.interchangeControlReference_0020 = interchangeControlReference_0020
	self.interchangeSender_S002 = interchangeSender_S002
	self.interchangeRecipient_S003 = interchangeRecipient_S003
	self.actionCoded_0083 = actionCoded_0083
	self.syntaxErrorCoded_0085 = syntaxErrorCoded_0085
	self.segmentTagCoded_0013 = segmentTagCoded_0013
	self.dataElementIdentification_S011 = dataElementIdentification_S011

	}

func description () -> String {

	var descText = "UCI+"
		descEDISeg(&descText, items: interchangeControlReference_0020)
		descEDISeg(&descText, items: interchangeSender_S002)
		descEDISeg(&descText, items: interchangeRecipient_S003)
		descEDISeg(&descText, items: actionCoded_0083)
		descEDISeg(&descText, items: syntaxErrorCoded_0085)
		descEDISeg(&descText, items: segmentTagCoded_0013)
		descEDISeg(&descText, items: dataElementIdentification_S011)

	descText.endFinal()

	return descText
}

}

