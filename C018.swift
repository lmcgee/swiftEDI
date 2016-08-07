//
//  C018.swift					 // InfantNameDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C018: Composite {			// InfantNameDetails

	var surname_3808: String = "" 
	var givenName_3809: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: surname_3808,
			givenName_3809)

		descText.enderFix()

	return descText
	}
}