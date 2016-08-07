//
//  C517.swift					 // LocationIdentification
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C517: Composite {			// LocationIdentification

	var placeLocationIdentification_3225: String  = "" 
	var codeListQualifier_1131: String = "" 
	var codeListResponsibleAgencyCoded_3055: String = "" 
	var placeLocation_3224: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: placeLocationIdentification_3225,
			codeListQualifier_1131,
			codeListResponsibleAgencyCoded_3055,
			placeLocation_3224)

		descText.enderFix()

	return descText
	}
}