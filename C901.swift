//
//  C901.swift					 // ApplicationErrorDetail
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C901: Composite {			// ApplicationErrorDetail

	var applicationErrorCoded_9321: String  = "" 
	var codeListQualifier_1131: String = "" 
	var codeListResponsibleAgencyCoded_3055: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: applicationErrorCoded_9321,
			codeListQualifier_1131,
			codeListResponsibleAgencyCoded_3055)

		descText.enderFix()

	return descText
	}
}