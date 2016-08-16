//
//  MEA.swift					 // Measurements 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class MEA: Segment
{
	var measurementApplicationQualifier_6311: C000
	var measurementDetails_C502: C502
	var valuerange_C174: C174
	var surfacelayerIndicatorCoded_7383: C000


init(measurementApplicationQualifier_6311: C000,
	measurementDetails_C502: C502,
	valuerange_C174: C174,
	surfacelayerIndicatorCoded_7383: C000) {

	self.measurementApplicationQualifier_6311 = measurementApplicationQualifier_6311
	self.measurementDetails_C502 = measurementDetails_C502
	self.valuerange_C174 = valuerange_C174
	self.surfacelayerIndicatorCoded_7383 = surfacelayerIndicatorCoded_7383

	}

func description () -> String {

	var descText = "MEA+"
		descEDISeg(&descText, items: measurementApplicationQualifier_6311)
		descEDISeg(&descText, items: measurementDetails_C502)
		descEDISeg(&descText, items: valuerange_C174)
		descEDISeg(&descText, items: surfacelayerIndicatorCoded_7383)

	descText.endFinal()

	return descText
}

}

