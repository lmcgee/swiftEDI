//
//  C027.swift					 // CheckedBaggageDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C027: Composite {			// CheckedBaggageDetails

	var numberOfPieces_6806: String  = "" 
	var weight_6803: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: numberOfPieces_6806,
			weight_6803)

		descText.enderFix()

	return descText
	}
}