//
//  C507.swift					 // DateTimePeriod
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C507: Composite {			// DateTimePeriod

	var dateTimePeriodQualifier_2005: String  = "" 
	var dateTimePeriod_2380: String = "" 
	var dateTimePeriodFormatQualifier_2379: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: dateTimePeriodQualifier_2005,
			dateTimePeriod_2380,
			dateTimePeriodFormatQualifier_2379)

		descText.enderFix()

	return descText
	}
}