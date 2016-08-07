//
//  C662.swift					 // FareDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C662: Composite {			// FareDetails

	var numberOfUnitsQualifier_6353: String = "" 
	var percentage_5482: String = "" 
	var countryCoded_3207: String = "" 
	var fareClassificationTypeCoded_9878: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: numberOfUnitsQualifier_6353,
			percentage_5482,
			countryCoded_3207,
			fareClassificationTypeCoded_9878)

		descText.enderFix()

	return descText
	}
}