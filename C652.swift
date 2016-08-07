//
//  C652.swift					 // AccountHolderInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C652: Composite {			// AccountHolderInformation

	var travelerSurname_9936: String = "" 
	var travelerGivenName_9942: String = "" 
	var institutionName_3432: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: travelerSurname_9936,
			travelerGivenName_9942,
			institutionName_3432)

		descText.enderFix()

	return descText
	}
}