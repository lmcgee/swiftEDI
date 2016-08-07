//
//  C300.swift					 // OriginatorIdentificationDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C300: Composite {			// OriginatorIdentificationDetails

	var travelAgentIdentificationDetails_9900: String = "" 
	var inHouseIdentification_9902: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: travelAgentIdentificationDetails_9900)

		descEDI(&descText, items: inHouseIdentification_9902)

		descText.enderFix()

	return descText
	}
}