//
//  C368.swift					 // OnTimePerformance
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C368: Composite {			// OnTimePerformance

	var dateTimePeriod_2380: String  = "" 
	var percentage_5482: String = "" 
	var percentageQualifier_5245: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: dateTimePeriod_2380,
			percentage_5482,
			percentageQualifier_5245)

		descText.enderFix()

	return descText
	}
}