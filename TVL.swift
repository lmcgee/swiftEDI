//
//  TVL.swift					 // Travel Product Information 
//  Created by Larry McGee on Mon Aug 15 18:36:32 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class TVL: Segment
{
	var productDatetime_C310: C310
	var location_C328: C328
	var location1_C328: C328
	var companyIdentification_C306: C306
	var productIdentificationDetails_C308: C308
	var productTypeDetails_C309: C309
	var lineItemNumber_1082: C000
	var processingIndicatorCoded_7365: C000
	var marriageControlDetails_C311: [C311]


init(productDatetime_C310: C310,
	location_C328: C328,
	location1_C328: C328,
	companyIdentification_C306: C306,
	productIdentificationDetails_C308: C308,
	productTypeDetails_C309: C309,
	lineItemNumber_1082: C000,
	processingIndicatorCoded_7365: C000,
	marriageControlDetails_C311: [C311] = []) {

	self.productDatetime_C310 = productDatetime_C310
	self.location_C328 = location_C328
	self.location1_C328 = location1_C328
	self.companyIdentification_C306 = companyIdentification_C306
	self.productIdentificationDetails_C308 = productIdentificationDetails_C308
	self.productTypeDetails_C309 = productTypeDetails_C309
	self.lineItemNumber_1082 = lineItemNumber_1082
	self.processingIndicatorCoded_7365 = processingIndicatorCoded_7365
	self.marriageControlDetails_C311 = marriageControlDetails_C311

	}

func description () -> String {

	var descText = "TVL+"
		descEDISeg(&descText, items: productDatetime_C310)
		descEDISeg(&descText, items: location_C328)
		descEDISeg(&descText, items: location1_C328)
		descEDISeg(&descText, items: companyIdentification_C306)
		descEDISeg(&descText, items: productIdentificationDetails_C308)
		descEDISeg(&descText, items: productTypeDetails_C309)
		descEDISeg(&descText, items: lineItemNumber_1082)
		descEDISeg(&descText, items: processingIndicatorCoded_7365)
		descEDISeg(&descText, items: marriageControlDetails_C311)

	descText.endFinal()

	return descText
}

}

