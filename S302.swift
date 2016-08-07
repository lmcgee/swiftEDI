//
//  S302.swift					 // DialogueReference
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class S302: Composite {			// DialogueReference

	var initiatorControlReference_0300: String  = "" 
	var initiatorReferenceIdentification_0303: String = "" 
	var controllingAgencyCoded_0051: String = "" 
	var responderControlReference_0304: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: initiatorControlReference_0300,
			initiatorReferenceIdentification_0303,
			controllingAgencyCoded_0051,
			responderControlReference_0304)

		descText.enderFix()

	return descText
	}
}