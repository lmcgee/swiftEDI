//
//  C224.swift					 // EquipmentSizeAndType
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C224: Composite {			// EquipmentSizeAndType

	var equipmentSizeAndTypeIdentification_8155: String = "" 
	var codeListQualifier_1131: String = "" 
	var codeListResponsibleAgencyCoded_3055: String = "" 
	var equipmentSizeAndType_8154: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: equipmentSizeAndTypeIdentification_8155,
			codeListQualifier_1131,
			codeListResponsibleAgencyCoded_3055,
			equipmentSizeAndType_8154)

		descText.enderFix()

	return descText
	}
}