//
//  C658.swift					 // DataTypeInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C658: Composite {			// DataTypeInformation

	var dataTypeCoded_9989: String  = "" 
	var statusEventCoded_9011: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: dataTypeCoded_9989,
			statusEventCoded_9011)

		descText.enderFix()

	return descText
	}
}