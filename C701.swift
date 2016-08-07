//
//  C701.swift					 // PassengerContactData
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C701: Composite {			// PassengerContactData

	var surname_3808: String = "" 
	var givenName_3809: String = "" 
	var communicationNumber_3148: String = "" 
	var freeText_4440: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: surname_3808,
			givenName_3809,
			communicationNumber_3148,
			freeText_4440)

		descText.enderFix()

	return descText
	}
}