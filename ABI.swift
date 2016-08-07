//
//  ABI.swift					 // 
//  Created by Larry McGee on Tue Jun  7 20:06:16 2016.
//  Copyright (c) 2012 TMG. All rights reserved.

class ABI: Segment
{
	var sourceType_C337: C337
	var originatorIdentificationDetails_C300: C300
	var location_C328: C328
	var countryCoded_3207: String
	var companyIdentification_9906: String


init(sourceType_C337: C337,
	originatorIdentificationDetails_C300: C300,
	location_C328: C328,
	countryCoded_3207: String,
	companyIdentification_9906: String) {

	self.sourceType_C337 = sourceType_C337
	self.originatorIdentificationDetails_C300 = originatorIdentificationDetails_C300
	self.location_C328 = location_C328
	self.countryCoded_3207 = countryCoded_3207
	self.companyIdentification_9906 = companyIdentification_9906

	}

func description () -> String {

	var descText = "ABI+"
    descEDISeg(&descText, items: sourceType_C337)
		descText += "+"
		descEDISeg(&descText, items: originatorIdentificationDetails_C300)
		descText += "+"
		descEDISeg(&descText, items: location_C328)
		descText += "+"
		descEDISeg(&descText, items: countryCoded_3207)
		descText += "+"
		descEDISeg(&descText, items: companyIdentification_9906)
		descText += "+"
	return descText
}

}

