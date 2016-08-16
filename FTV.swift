//
//  FTV.swift					 // Frequent Traveller Verification 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class FTV: Segment
{
	var actionRequestNotificationCoded_1229: C000
	var membershipLevel_7456: C000
	var companyIdentification_C306: C306
	var productaccountDetails_C650: C650
	var productaccountDetails1_C650: C650
	var validDateInformation_C651: C651
	var accountHolderInformation_C652: C652


init(actionRequestNotificationCoded_1229: C000,
	membershipLevel_7456: C000,
	companyIdentification_C306: C306,
	productaccountDetails_C650: C650,
	productaccountDetails1_C650: C650,
	validDateInformation_C651: C651,
	accountHolderInformation_C652: C652) {

	self.actionRequestNotificationCoded_1229 = actionRequestNotificationCoded_1229
	self.membershipLevel_7456 = membershipLevel_7456
	self.companyIdentification_C306 = companyIdentification_C306
	self.productaccountDetails_C650 = productaccountDetails_C650
	self.productaccountDetails1_C650 = productaccountDetails1_C650
	self.validDateInformation_C651 = validDateInformation_C651
	self.accountHolderInformation_C652 = accountHolderInformation_C652

	}

func description () -> String {

	var descText = "FTV+"
		descEDISeg(&descText, items: actionRequestNotificationCoded_1229)
		descEDISeg(&descText, items: membershipLevel_7456)
		descEDISeg(&descText, items: companyIdentification_C306)
		descEDISeg(&descText, items: productaccountDetails_C650)
		descEDISeg(&descText, items: productaccountDetails1_C650)
		descEDISeg(&descText, items: validDateInformation_C651)
		descEDISeg(&descText, items: accountHolderInformation_C652)

	descText.endFinal()

	return descText
}

}

