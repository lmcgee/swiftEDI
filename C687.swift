//
//  C687.swift					 // ClassInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C687: Composite {			// ClassInformation

	var characteristicIdentification_7037: String = "" 
	var cabinClassOfServiceCoded_9873: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: characteristicIdentification_7037,
			cabinClassOfServiceCoded_9873)

		descText.enderFix()

	return descText
	}
}