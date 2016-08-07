//
//  C650.swift					 // ProductAccountDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C650: Composite {			// ProductAccountDetails

	var itemNumberTypeCoded_7143: String = "" 
	var frequentTravelerIdentificationCode_9948: String  = "" 
	var rateTariffClassIdentification_5243: String = "" 
	var sequenceNumber_1050: String = "" 
	var referenceVersionNumber_4000: String = "" 
	var rateTariffClass_5242: String = "" 
	var approvalIdentification_9889: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: itemNumberTypeCoded_7143,
			frequentTravelerIdentificationCode_9948,
			rateTariffClassIdentification_5243,
			sequenceNumber_1050,
			referenceVersionNumber_4000,
			rateTariffClass_5242,
			approvalIdentification_9889)

		descText.enderFix()

	return descText
	}
}