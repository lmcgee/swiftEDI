//
//  C310.swift					 // ProductDateTime
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C310: Composite {			// ProductDateTime

	var firstDate_9916: String = "" 
	var firstTime_9918: String = "" 
	var secondDate_9920: String = "" 
	var secondTime_9922: String = "" 
	var dateVariation_9954: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: firstDate_9916,
			firstTime_9918,
			secondDate_9920,
			secondTime_9922,
			dateVariation_9954)

		descText.enderFix()

	return descText
	}
}