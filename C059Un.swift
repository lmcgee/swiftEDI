//
//  C059Un.swift					 // Street
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C059Un: Composite {			// Street

	var streetAndNumberPOBox_3042: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: streetAndNumberPOBox_3042)

		descText.enderFix()

	return descText
	}
}