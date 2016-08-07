//
//  C036.swift					 // UpdateHandBaggageDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C036: Composite {			// UpdateHandBaggageDetails

	var updateActionCode_9858: String  = "" 
	var numberOfPieces_6806: String = "" 
	var weight_6803: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: updateActionCode_9858,
			numberOfPieces_6806,
			weight_6803)

		descText.enderFix()

	return descText
	}
}