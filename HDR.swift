//
//  HDR.swift					 // Header Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class HDR: Segment
{
	var statusCoded_4405: C000
	var datetimeperiod_C507: C507
	var referenceNumber_1154: C000
	var datetimeperiod1_2380: C000
	var freeText_4440: C000
	var productIdentification_9908: [C999]]


init(statusCoded_4405: C000,
	datetimeperiod_C507: C507,
	referenceNumber_1154: C000,
	datetimeperiod1_2380: C000,
	freeText_4440: C000,
	productIdentification_9908: [C999]) {

	self.statusCoded_4405 = statusCoded_4405
	self.datetimeperiod_C507 = datetimeperiod_C507
	self.referenceNumber_1154 = referenceNumber_1154
	self.datetimeperiod1_2380 = datetimeperiod1_2380
	self.freeText_4440 = freeText_4440
	self.productIdentification_9908 = productIdentification_9908

	}

func description () -> String {

	var descText = "HDR+"
		descEDISeg(&descText, items: statusCoded_4405)
		descEDISeg(&descText, items: datetimeperiod_C507)
		descEDISeg(&descText, items: referenceNumber_1154)
		descEDISeg(&descText, items: datetimeperiod1_2380)
		descEDISeg(&descText, items: freeText_4440)
		descEDISeg(&descText, items: productIdentification_9908)

	descText.endFinal()

	return descText
}

}

