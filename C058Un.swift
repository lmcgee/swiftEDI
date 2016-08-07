//
//  C058Un.swift					 // NameAndAddress
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C058Un: Composite {			// NameAndAddress

	var nameAndAddressLine_3124: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: nameAndAddressLine_3124)

		descText.enderFix()

	return descText
	}
}