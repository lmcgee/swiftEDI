//
//  C640.swift					 // CouponInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C640: Composite {			// CouponInformation

	var sequenceNumber_1050: String = "" 
	var statusCoded1_4405: String = "" 
	var monetaryAmount_5004: String = "" 
	var sequenceNumberSourceCoded_1159: String = "" 
	var controlIdentification_9887: String = "" 
	var statusIndicatorCoded_1245: String = "" 
	var statusCoded2_4405: String = "" 
	var sequenceNumber1_1050: String = "" 
	var referenceNumber_1154: String = "" 
	var actionRequestNotification_1229: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: sequenceNumber_1050,
			statusCoded1_4405,
			monetaryAmount_5004,
			sequenceNumberSourceCoded_1159,
			controlIdentification_9887,
			statusIndicatorCoded_1245,
			statusCoded2_4405,
			sequenceNumber1_1050,
			referenceNumber_1154,
			actionRequestNotification_1229)

		descText.enderFix()

	return descText
	}
}