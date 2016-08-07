//
//  C302.swift					 // MessageFunctionBusinessDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C302: Composite {			// MessageFunctionBusinessDetails

	var businessFunctionCoded_4025: String = "" 
	var messageFunctionCoded_1225: String = "" 
	var codeListResponsibleAgencyCoded_3055: String = "" 
	var messageFunctionCoded1_1225: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: businessFunctionCoded_4025,
			messageFunctionCoded_1225,
			codeListResponsibleAgencyCoded_3055)

		descEDI(&descText, items: messageFunctionCoded1_1225)

		descText.enderFix()

	return descText
	}
}