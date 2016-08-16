//
//  FRI.swift					 // Fare Route Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class FRI: Segment
{
	var daysOfOperation_9928: C000
	var fareQualifierInformation_C645: C645
	var identityNumber_7402: C000
	var validDateInformation_C651: C651


init(daysOfOperation_9928: C000,
	fareQualifierInformation_C645: C645,
	identityNumber_7402: C000,
	validDateInformation_C651: C651) {

	self.daysOfOperation_9928 = daysOfOperation_9928
	self.fareQualifierInformation_C645 = fareQualifierInformation_C645
	self.identityNumber_7402 = identityNumber_7402
	self.validDateInformation_C651 = validDateInformation_C651

	}

func description () -> String {

	var descText = "FRI+"
		descEDISeg(&descText, items: daysOfOperation_9928)
		descEDISeg(&descText, items: fareQualifierInformation_C645)
		descEDISeg(&descText, items: identityNumber_7402)
		descEDISeg(&descText, items: validDateInformation_C651)

	descText.endFinal()

	return descText
}

}

