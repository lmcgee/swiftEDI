//
//  C017.swift					 // PassengerTypeDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C017: Composite {			// PassengerTypeDetails

	var passengerType_9819: String  = "" 
	var passengerWithInfantIndicator_9884: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: passengerType_9819,
			passengerWithInfantIndicator_9884)

		descText.enderFix()

	return descText
	}
}