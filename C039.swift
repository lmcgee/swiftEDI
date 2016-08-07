//
//  C039.swift					 // UpdateOsiDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C039: Composite {			// UpdateOsiDetails

	var updateActionCode_9858: String  = "" 
	var otherServiceInformationOsi_9838: String  = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: updateActionCode_9858,
			otherServiceInformationOsi_9838)

		descText.enderFix()

	return descText
	}
}