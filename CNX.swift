//
//  CNX.swift					 // Connection Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class CNX: Segment
{
	var connectionDetails_C312: C312
	var connectionDetails1_C312: C312
	var couponInformation_C640: [C640]


init(connectionDetails_C312: C312,
	connectionDetails1_C312: C312,
	couponInformation_C640: [C640] = []) {

	self.connectionDetails_C312 = connectionDetails_C312
	self.connectionDetails1_C312 = connectionDetails1_C312
	self.couponInformation_C640 = couponInformation_C640

	}

func description () -> String {

	var descText = "CNX+"
		descEDISeg(&descText, items: connectionDetails_C312)
		descEDISeg(&descText, items: connectionDetails1_C312)
		descEDISeg(&descText, items: couponInformation_C640)

	descText.endFinal()

	return descText
}

}

