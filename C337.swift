//
//  C337.swift					 // SourceType
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C337: Composite {			// SourceType

	var sectorSubjectIdentificationQualifier_7293: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: sectorSubjectIdentificationQualifier_7293)

		descText.enderFix()

	return descText
	}
}