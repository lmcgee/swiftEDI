//
//  C082.swift					 // PartyIdentificationDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C082: Composite {			// PartyIdentificationDetails

	var partyIdIdentification_3039: String = "" 
	var codeListQualifier_1131: String = "" 
	var codeListResponsibleAgencyCoded_3055: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: partyIdIdentification_3039,
			codeListQualifier_1131,
			codeListResponsibleAgencyCoded_3055)

		descText.enderFix()

	return descText
	}
}