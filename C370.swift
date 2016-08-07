//
//  C370.swift					 // PortOfCallDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C370: Composite {			// PortOfCallDetails

	var typeOfCallAtPort_9984: String = "" 
	var restrictedPayload_9982: String = "" 
	var governmentActionCoded_9417: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: typeOfCallAtPort_9984,
			restrictedPayload_9982,
			governmentActionCoded_9417)

		descText.enderFix()

	return descText
	}
}