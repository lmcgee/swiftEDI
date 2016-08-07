//
//  C672.swift					 // ProcessingInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C672: Composite {			// ProcessingInformation

	var messageFunctionCoded_1225: String = "" 
	var referenceQualifier_1153: String = "" 
	var sequenceNumber_1050: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: messageFunctionCoded_1225,
			referenceQualifier_1153,
			sequenceNumber_1050)

		descText.enderFix()

	return descText
	}
}