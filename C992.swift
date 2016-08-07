//
//  C992.swift					 // Position
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C992: Composite {			// Position

	var relatedPlaceLocationOneIdentification_3223: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: relatedPlaceLocationOneIdentification_3223)

		descText.enderFix()

	return descText
	}
}