//
//  C654.swift					 // InstructionInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C654: Composite {			// InstructionInformation

	var instructionCoded_4401: String = "" 
	var instructionQualifier_4403: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: instructionCoded_4401,
			instructionQualifier_4403)

		descText.enderFix()

	return descText
	}
}