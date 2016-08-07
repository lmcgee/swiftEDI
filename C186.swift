//
//  C186.swift					 // QuantityDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C186: Composite {			// QuantityDetails

	var quantityQualifier_6063: String  = "" 
	var quantity_6060: String  = "" 
	var measureUnitQualifier_6411: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: quantityQualifier_6063,
			quantity_6060,
			measureUnitQualifier_6411)

		descText.enderFix()

	return descText
	}
}