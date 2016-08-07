//
//  C212.swift					 // ItemNumberIdentification
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C212: Composite {			// ItemNumberIdentification

	var itemNumber_7140: String = "" 
	var itemNumberTypeCoded_7143: String = "" 
	var codeListQualifier_1131: String = "" 
	var codeListResponsibleAgencyCoded_3055: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: itemNumber_7140,
			itemNumberTypeCoded_7143,
			codeListQualifier_1131,
			codeListResponsibleAgencyCoded_3055)

		descText.enderFix()

	return descText
	}
}