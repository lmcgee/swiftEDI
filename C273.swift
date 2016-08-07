//
//  C273.swift					 // ItemDescription
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C273: Composite {			// ItemDescription

	var itemDescriptionIdentification_7009: String = "" 
	var codeListQualifier_1131: String = "" 
	var codeListResponsibleAgencyCoded_3055: String = "" 
	var itemDescription_7008: [String] = [] 
	var languageCoded_3453: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: itemDescriptionIdentification_7009,
			codeListQualifier_1131,
			codeListResponsibleAgencyCoded_3055)

		descEDI(&descText, items: itemDescription_7008)

		descEDI(&descText, items: languageCoded_3453)

		descText.enderFix()

	return descText
	}
}