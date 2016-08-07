//
//  C323.swift					 // TravellerRelatedText
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C323: Composite {			// TravellerRelatedText

	var travelerReferenceNumber_9944: String = "" 
	var textSubjectQualifier_4451: String = "" 
	var freeText_4440: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: travelerReferenceNumber_9944,
			textSubjectQualifier_4451)

		descEDI(&descText, items: freeText_4440)

		descText.enderFix()

	return descText
	}
}