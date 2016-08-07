//
//  S301.swift					 // StatusOfTransferInteractive
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class S301: Composite {			// StatusOfTransferInteractive

	var messageSequenceNumber_0320: String = "" 
	var messagePositionCoded_0323: String = "" 
	var duplicateIndicator_0325: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: messageSequenceNumber_0320,
			messagePositionCoded_0323,
			duplicateIndicator_0325)

		descText.enderFix()

	return descText
	}
}