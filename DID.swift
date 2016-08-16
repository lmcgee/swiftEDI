//
//  DID.swift					 // Document Information Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class DID: Segment
{
	var documentDetails_C350: C350
	var processingDetails_C355: C355


init(documentDetails_C350: C350,
	processingDetails_C355: C355) {

	self.documentDetails_C350 = documentDetails_C350
	self.processingDetails_C355 = processingDetails_C355

	}

func description () -> String {

	var descText = "DID+"
		descEDISeg(&descText, items: documentDetails_C350)
		descEDISeg(&descText, items: processingDetails_C355)

	descText.endFinal()

	return descText
}

}

