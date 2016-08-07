//
//  C653.swift					 // ReferencingDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C653: Composite {			// ReferencingDetails

	var referenceQualifier_1153: String = "" 
	var referenceNumber_1154: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: referenceQualifier_1153,
			referenceNumber_1154)

		descText.enderFix()

	return descText
	}
}