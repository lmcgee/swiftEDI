//
//  C689.swift					 // TravellerIndicators
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C689: Composite {			// TravellerIndicators

	var statusIndicatorCoded_1245: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: statusIndicatorCoded_1245)

		descText.enderFix()

	return descText
	}
}