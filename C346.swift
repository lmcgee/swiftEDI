//
//  C346.swift					 // FreeTextQualification
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C346: Composite {			// FreeTextQualification

	var textSubjectQualifier_4451: String  = "" 
	var informationType_9980: String = "" 
	var statusCoded_4405: String = "" 
	var companyIdentification_9906: String = "" 
	var languageCoded_3453: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: textSubjectQualifier_4451,
			informationType_9980,
			statusCoded_4405,
			companyIdentification_9906,
			languageCoded_3453)

		descText.enderFix()

	return descText
	}
}