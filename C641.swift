//
//  C641.swift					 // FormOfPaymentDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C641: Composite {			// FormOfPaymentDetails

	var formOfPaymentIdentification_9888: String  = "" 
	var dataIndicator_9988: String = "" 
	var monetaryAmount1_5004: String = "" 
	var companyIdentification_9906: String = "" 
	var referenceNumber_1154: String = "" 
	var firstDate_9916: String = "" 
	var approvalIdentification_9889: String = "" 
	var sourceCoded_9890: String = "" 
	var monetaryAmount2_5004: String = "" 
	var verificationCoded_9891: String = "" 
	var accountHolderNumber_3194: String = "" 
	var paymentTimeReferenceCoded_2475: String = "" 
	var freeText_4440: String = "" 
	var membershipStatusCoded_7453: String = "" 
	var transactionInformation_9892: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: formOfPaymentIdentification_9888,
			dataIndicator_9988,
			monetaryAmount1_5004,
			companyIdentification_9906,
			referenceNumber_1154,
			firstDate_9916,
			approvalIdentification_9889,
			sourceCoded_9890,
			monetaryAmount2_5004,
			verificationCoded_9891,
			accountHolderNumber_3194,
			paymentTimeReferenceCoded_2475,
			freeText_4440,
			membershipStatusCoded_7453,
			transactionInformation_9892)

		descText.enderFix()

	return descText
	}
}