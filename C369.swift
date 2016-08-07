//
//  C369.swift					 // ReasonInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C369: Composite {			// ReasonInformation

	var statusReasonCoded_9013: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: statusReasonCoded_9013)

		descText.enderFix()

	return descText
	}
}