//
//  C366.swift					 // TerminalInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C366: Composite {			// TerminalInformation

	var relatedPlaceLocationOneIdentification_3223: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: relatedPlaceLocationOneIdentification_3223)

		descText.enderFix()

	return descText
	}
}