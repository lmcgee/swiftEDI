//
//  C080.swift					 // PartyName
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C080: Composite {			// PartyName

	var partyName_3036: [String] = [] 
	var partyNameFormatCoded_3045: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: partyName_3036)

		descEDI(&descText, items: partyNameFormatCoded_3045)

		descText.enderFix()

	return descText
	}
}