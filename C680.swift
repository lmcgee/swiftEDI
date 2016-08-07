//
//  C680.swift					 // SeatCharacteristicDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C680: Composite {			// SeatCharacteristicDetails

	var seatCharacteristicCoded_9825: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: seatCharacteristicCoded_9825)

		descText.enderFix()

	return descText
	}
}