//
//  C309.swift					 // ProductTypeDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C309: Composite {			// ProductTypeDetails

	var sequenceNumber_1050: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: sequenceNumber_1050)

		descText.enderFix()

	return descText
	}
}