//
//  C306.swift					 // CompanyIdentification
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C306: Composite {			// CompanyIdentification

	var companyIdentification_9906: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: companyIdentification_9906)

		descText.enderFix()

	return descText
	}
}