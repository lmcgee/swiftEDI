//
//  C028.swift					 // HandBaggageDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C028: Composite {			// HandBaggageDetails

	var numberOfPieces_6806: String = "" 
	var weight_6803: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: numberOfPieces_6806,
			weight_6803)

		descText.enderFix()

	return descText
	}
}