//
//  C683.swift					 // SpecificSeatPurpose
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C683: Composite {			// SpecificSeatPurpose

	var itemCharacteristicCoded_7081: String = "" 
	var specificSeat_9809: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: itemCharacteristicCoded_7081,
			specificSeat_9809)

		descText.enderFix()

	return descText
	}
}