//
//  S300.swift					 // DateAndOrTimeOfInitiation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class S300: Composite {			// DateAndOrTimeOfInitiation

	var dateExtended_0339: String = "" 
	var eventTime_0314: String = "" 
	var timeOffset_0337: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: dateExtended_0339,
			eventTime_0314,
			timeOffset_0337)

		descText.enderFix()

	return descText
	}
}