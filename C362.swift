//
//  C362.swift					 // TimeInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C362: Composite {			// TimeInformation

	var firstTime_9918: String  = "" 
	var secondTime_9922: String = "" 
	var utcLocalTimeVariation_9986: String = "" 
	var dateVariation_9954: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: firstTime_9918,
			secondTime_9922,
			utcLocalTimeVariation_9986,
			dateVariation_9954)

		descText.enderFix()

	return descText
	}
}