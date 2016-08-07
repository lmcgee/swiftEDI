//
//  C013.swift					 // OutboundCarrierDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C013: Composite {			// OutboundCarrierDetails

	var carrierIdentification_3127: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: carrierIdentification_3127)

		descText.enderFix()

	return descText
	}
}