//
//  C024.swift					 // GenericSeatRequestDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C024: Composite {			// GenericSeatRequestDetails

	var noSmokingIndicator_9807: String  = "" 
	var seatCharacteristicCoded_9825: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: noSmokingIndicator_9807)

		descEDI(&descText, items: seatCharacteristicCoded_9825)

		descText.enderFix()

	return descText
	}
}