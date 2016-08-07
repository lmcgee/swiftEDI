//
//  C352.swift					 // CargoDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C352: Composite {			// CargoDetails

	var natureOfCargoCoded_7085: String = "" 
	var handlingInstructionsCoded_4079: String = "" 
	var statusCoded_4405: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: natureOfCargoCoded_7085,
			handlingInstructionsCoded_4079,
			statusCoded_4405)

		descText.enderFix()

	return descText
	}
}