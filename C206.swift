//
//  C206.swift					 // IdentificationNumber
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C206: Composite {			// IdentificationNumber

	var identityNumber_7402: String  = "" 
	var identityNumberQualifier_7405: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: identityNumber_7402,
			identityNumberQualifier_7405)

		descText.enderFix()

	return descText
	}
}