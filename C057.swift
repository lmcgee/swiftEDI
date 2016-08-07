//
//  C057.swift					 // BagTagSelectionDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C057: Composite {			// BagTagSelectionDetails

	var carrierIdentification_3127: String  = "" 
	var tagSerialNumber_9835: String  = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: carrierIdentification_3127,
			tagSerialNumber_9835)

		descText.enderFix()

	return descText
	}
}