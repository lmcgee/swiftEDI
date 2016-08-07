//
//  C351.swift					 // QuantityInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C351: Composite {			// QuantityInformation

	var numberOfUnits_6350: String = "" 
	var measurementValue_6314: String = "" 
	var quantity_6060: String = "" 
	var quantityQualifier_6063: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: numberOfUnits_6350,
			measurementValue_6314,
			quantity_6060,
			quantityQualifier_6063)

		descText.enderFix()

	return descText
	}
}