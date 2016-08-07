//
//  C311.swift					 // MarriageControlDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C311: Composite {			// MarriageControlDetails

	var relationCoded_5479: String = "" 
	var groupNumber_9995: String = "" 
	var lineItemNumber_1082: String = "" 
	var relationCoded1_5479: String = "" 
	var companyIdentification_9906: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: relationCoded_5479,
			groupNumber_9995,
			lineItemNumber_1082,
			relationCoded1_5479,
			companyIdentification_9906)

		descText.enderFix()

	return descText
	}
}