//
//  C642.swift					 // InternalIdentificationDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C642: Composite {			// InternalIdentificationDetails

	var inHouseIdentification_9902: String  = "" 
	var identificationTypeCoded_9893: String = "" 
	var travelAgentIdentificationDetails_9900: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: inHouseIdentification_9902,
			identificationTypeCoded_9893,
			travelAgentIdentificationDetails_9900)

		descText.enderFix()

	return descText
	}
}