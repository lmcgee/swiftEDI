//
//  CPN.swift					 // Coupon Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class CPN: Segment
{
	var couponInformation_C640: C640
	var couponInformation_C640: [C640]


init(couponInformation_C640: C640,
	couponInformation_C640: [C640] = []) {

	self.couponInformation_C640 = couponInformation_C640
	self.couponInformation_C640 = couponInformation_C640

	}

func description () -> String {

	var descText = "CPN+"
		descEDISeg(&descText, items: couponInformation_C640)
		descEDISeg(&descText, items: couponInformation_C640)

	descText.endFinal()

	return descText
}

}

