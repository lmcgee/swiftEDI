//
//  C660.swift					 // SelectionDetailsInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C660: Composite {			// SelectionDetailsInformation

	var option_9750: String  = "" 
	var associatedOptionInformation_9749: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: option_9750,
			associatedOptionInformation_9749)

		descText.enderFix()

	return descText
	}
}