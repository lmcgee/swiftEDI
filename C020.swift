//
//  C020.swift					 // PassengerPartyReferenceDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C020: Composite {			// PassengerPartyReferenceDetails

	var alphaPartyReference_9826: String  = "" 
	var numericPartyReference_9827: String  = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: alphaPartyReference_9826,
			numericPartyReference_9827)

		descText.enderFix()

	return descText
	}
}