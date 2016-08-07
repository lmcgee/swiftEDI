//
//  C977.swift					 // PaymentDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C977: Composite {			// PaymentDetails

	var formOfPaymentIdentification_5903: String  = "" 
	var paymentTypeIdentification_5905: String = "" 
	var serviceToBePaidCoded_5909: String = "" 
	var monetaryAmount_5004: String = "" 
	var currencyCoded_6345: String = "" 
	var referenceNumber_1154: String = "" 
	var firstDate_9916: String = "" 
	var placeLocationIdentification_3225: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: formOfPaymentIdentification_5903,
			paymentTypeIdentification_5905,
			serviceToBePaidCoded_5909,
			monetaryAmount_5004,
			currencyCoded_6345,
			referenceNumber_1154,
			firstDate_9916,
			placeLocationIdentification_3225)

		descText.enderFix()

	return descText
	}
}