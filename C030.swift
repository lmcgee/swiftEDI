//
//  C030.swift					 // SsrDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C030: Composite {			// SsrDetails

	var specialServiceRequestSsrCode_9837: String  = "" 
	var carrierIdentification_3127: String = "" 
	var frequentFlyerIdentificationCode_9839: String = "" 
	var age_9886: String = "" 
	var numberOfPieces_6806: String = "" 
	var weight_6803: String = "" 
	var freeText_4440: String = "" 
	var numericOfUnitsQualifier_6353: String = "" 
	var documentMessageNameCoded_1001: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: specialServiceRequestSsrCode_9837,
			carrierIdentification_3127,
			frequentFlyerIdentificationCode_9839,
			age_9886,
			numberOfPieces_6806,
			weight_6803,
			freeText_4440,
			numericOfUnitsQualifier_6353,
			documentMessageNameCoded_1001)

		descText.enderFix()

	return descText
	}
}