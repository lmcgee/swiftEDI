//
//  C350.swift					 // DocumentDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C350: Composite {			// DocumentDetails

	var documentMessageNumber_1004: String = "" 
	var statusCoded_4405: String = "" 
	var dateTimePeriod_2380: String = "" 
	var countryCoded_3207: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: documentMessageNumber_1004,
			statusCoded_4405,
			dateTimePeriod_2380,
			countryCoded_3207)

		descText.enderFix()

	return descText
	}
}