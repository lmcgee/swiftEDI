//
//  C644.swift					 // FareTypeGroupingInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C644: Composite {			// FareTypeGroupingInformation

	var pricingGroup_5388: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: pricingGroup_5388)

		descText.enderFix()

	return descText
	}
}