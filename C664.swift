//
//  C664.swift					 // PricingTicketingInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C664: Composite {			// PricingTicketingInformation

	var priceTypeQualifier_5387: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: priceTypeQualifier_5387)

		descText.enderFix()

	return descText
	}
}