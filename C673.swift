//
//  C673.swift					 // Reference
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C673: Composite {			// Reference

	var sequenceNumber_1050: String = "" 
	var referenceNumber_1154: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: sequenceNumber_1050)

		descEDI(&descText, items: referenceNumber_1154)

		descText.enderFix()

	return descText
	}
}