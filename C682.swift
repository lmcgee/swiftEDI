//
//  C682.swift					 // SecurityIdentificationDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C682: Composite {			// SecurityIdentificationDetails

	var securityIdentification_9751: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: securityIdentification_9751)

		descText.enderFix()

	return descText
	}
}