//
//  C665.swift					 // CompanyIdentificationNumbers
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C665: Composite {			// CompanyIdentificationNumbers

	var companyIdentificationNumber_9996: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: companyIdentificationNumber_9996)

		descText.enderFix()

	return descText
	}
}