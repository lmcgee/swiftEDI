//
//  C677.swift					 // MessageEquipmentDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C677: Composite {			// MessageEquipmentDetails

	var equipmentQualifier_8053: String  = "" 
	var equipmentStatusCoded_8249: String = "" 
	var equipmentSizeAndTypeIdentification_8155: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: equipmentQualifier_8053,
			equipmentStatusCoded_8249,
			equipmentSizeAndTypeIdentification_8155)

		descText.enderFix()

	return descText
	}
}