//
//  C670.swift					 // ReferenceQualification
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C670: Composite {			// ReferenceQualification

	var identityNumberQualifier_7405: String = "" 
	var referenceQualifier_1153: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: identityNumberQualifier_7405,
			referenceQualifier_1153)

		descText.enderFix()

	return descText
	}
}