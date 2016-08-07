//
//  C318.swift					 // TravellerTimeDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C318: Composite {			// TravellerTimeDetails

	var firstTime_9918: String = "" 
	var secondTime_9922: String = "" 
	var checkInDetails_9952: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: firstTime_9918,
			secondTime_9922,
			checkInDetails_9952)

		descText.enderFix()

	return descText
	}
}