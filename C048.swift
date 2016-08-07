//
//  C048.swift					 // ConfigurationDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C048: Composite {			// ConfigurationDetails

	var cabinClassDesignator_9854: String  = "" 
	var seatsNumberOfSeats_6800: String = "" 
	var characteristicIdentification_7037: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: cabinClassDesignator_9854,
			seatsNumberOfSeats_6800)

		descEDI(&descText, items: characteristicIdentification_7037)

		descText.enderFix()

	return descText
	}
}