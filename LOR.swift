//
//  LOR.swift					 // Locationoriginator Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class LOR: Segment
{
	var placeOfOriginOfARequest_C059: C059
	var requestorIdentificationDetails_C012: C012


init(placeOfOriginOfARequest_C059: C059,
	requestorIdentificationDetails_C012: C012) {

	self.placeOfOriginOfARequest_C059 = placeOfOriginOfARequest_C059
	self.requestorIdentificationDetails_C012 = requestorIdentificationDetails_C012

	}

func description () -> String {

	var descText = "LOR+"
		descEDISeg(&descText, items: placeOfOriginOfARequest_C059)
		descEDISeg(&descText, items: requestorIdentificationDetails_C012)

	descText.endFinal()

	return descText
}

}

