//
//  C651.swift					 // ValidDateInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C651: Composite {			// ValidDateInformation

	var firstDate_9916: String = "" 
	var secondDate_9920: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: firstDate_9916,
			secondDate_9920)

		descText.enderFix()

	return descText
	}
}