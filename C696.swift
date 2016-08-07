//
//  C696.swift					 // HostDefinition
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C696: Composite {			// HostDefinition

	var hostQualifier_9803: String  = "" 
	var hostDefinitionNumeric_9804: String = "" 
	var carrierIdentification_3127: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: hostQualifier_9803,
			hostDefinitionNumeric_9804,
			carrierIdentification_3127)

		descText.enderFix()

	return descText
	}
}