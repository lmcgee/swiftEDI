//
//  C019.swift					 // CheckedInSequenceDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C019: Composite {			// CheckedInSequenceDetails

	var checkedInSequenceNumber_9852: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: checkedInSequenceNumber_9852)

		descText.enderFix()

	return descText
	}
}