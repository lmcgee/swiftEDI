//
//  ABI.swift					 // Additional Business Source Information 
//  Created by Larry McGee on Mon Aug 15 18:36:32 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class ABI: Segment
{
	var sourceType_C337: C337
	var originatorIdentificationDetails_C300: C300
	var location_C328: C328
	var countryCoded_3207: C000
	var companyIdentification_9906: C000


init(sourceType_C337: C337,
	originatorIdentificationDetails_C300: C300,
	location_C328: C328,
	countryCoded_3207: C000,
	companyIdentification_9906: C000) {

	self.sourceType_C337 = sourceType_C337
	self.originatorIdentificationDetails_C300 = originatorIdentificationDetails_C300
	self.location_C328 = location_C328
	self.countryCoded_3207 = countryCoded_3207
	self.companyIdentification_9906 = companyIdentification_9906

	}

func description () -> String {

	var descText = "ABI+"
		descEDISeg(&descText, items: sourceType_C337)
		descEDISeg(&descText, items: originatorIdentificationDetails_C300)
		descEDISeg(&descText, items: location_C328)
		descEDISeg(&descText, items: countryCoded_3207)
		descEDISeg(&descText, items: companyIdentification_9906)

	descText.endFinal()

	return descText
}

}

