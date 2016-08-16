//
//  APD.swift					 // Additional Product Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class APD: Segment
{
	var additionalProductDetails_C314: C314
	var stationInformation_C348: C348
	var stationInformation2_C348: C348
	var mileagetimeDetails_C317: C317
	var travellerTimeDetails_C318: C318
	var productFacilities_C320: C320


init(additionalProductDetails_C314: C314,
	stationInformation_C348: C348,
	stationInformation2_C348: C348,
	mileagetimeDetails_C317: C317,
	travellerTimeDetails_C318: C318,
	productFacilities_C320: C320) {

	self.additionalProductDetails_C314 = additionalProductDetails_C314
	self.stationInformation_C348 = stationInformation_C348
	self.stationInformation2_C348 = stationInformation2_C348
	self.mileagetimeDetails_C317 = mileagetimeDetails_C317
	self.travellerTimeDetails_C318 = travellerTimeDetails_C318
	self.productFacilities_C320 = productFacilities_C320

	}

func description () -> String {

	var descText = "APD+"
		descEDISeg(&descText, items: additionalProductDetails_C314)
		descEDISeg(&descText, items: stationInformation_C348)
		descEDISeg(&descText, items: stationInformation2_C348)
		descEDISeg(&descText, items: mileagetimeDetails_C317)
		descEDISeg(&descText, items: travellerTimeDetails_C318)
		descEDISeg(&descText, items: productFacilities_C320)

	descText.endFinal()

	return descText
}

}

