//
//  C237.swift					 // EquipmentIdentification
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C237: Composite {			// EquipmentIdentification

	var equipmentIdentificationNumber_8260: String = "" 
	var codeListQualifier_1131: String = "" 
	var codeListResponsibleAgencyCoded_3055: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: equipmentIdentificationNumber_8260,
			codeListQualifier_1131,
			codeListResponsibleAgencyCoded_3055)

		descText.enderFix()

	return descText
	}
}