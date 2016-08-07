//
//  S010.swift					 // StatusOfTheTransfer
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class S010: Composite {			// StatusOfTheTransfer

	var sequenceOfTransfers_0070: String  = "" 
	var firstAndLastTransfer_0073: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: sequenceOfTransfers_0070,
			firstAndLastTransfer_0073)

		descText.enderFix()

	return descText
	}
}