//
//  C669.swift					 // MultipleIdentificationNumbers
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C669: Composite {			// MultipleIdentificationNumbers

	var identityNumber_7402: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: identityNumber_7402)

		descText.enderFix()

	return descText
	}
}