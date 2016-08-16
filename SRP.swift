//
//  SRP.swift					 // Seat Request Parameters 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class SRP: Segment
{
	var genericDetails_C344: C344
	var rangeOfRowsDetails_C047: C047
	var processingIndicatorCoded_7365: C000
	var referenceNumber_1154: C000
	var freeText_4440: C000


init(genericDetails_C344: C344,
	rangeOfRowsDetails_C047: C047,
	processingIndicatorCoded_7365: C000,
	referenceNumber_1154: C000,
	freeText_4440: C000) {

	self.genericDetails_C344 = genericDetails_C344
	self.rangeOfRowsDetails_C047 = rangeOfRowsDetails_C047
	self.processingIndicatorCoded_7365 = processingIndicatorCoded_7365
	self.referenceNumber_1154 = referenceNumber_1154
	self.freeText_4440 = freeText_4440

	}

func description () -> String {

	var descText = "SRP+"
		descEDISeg(&descText, items: genericDetails_C344)
		descEDISeg(&descText, items: rangeOfRowsDetails_C047)
		descEDISeg(&descText, items: processingIndicatorCoded_7365)
		descEDISeg(&descText, items: referenceNumber_1154)
		descEDISeg(&descText, items: freeText_4440)

	descText.endFinal()

	return descText
}

}

