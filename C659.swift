//
//  C659.swift					 // DataInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C659: Composite {			// DataInformation

	var dataIndicator_9988: String = "" 
	var quantity_6060: String = "" 
	var measureUnitQualifier_6411: String = "" 
	var freeText_4440: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: dataIndicator_9988,
			quantity_6060,
			measureUnitQualifier_6411,
			freeText_4440)

		descText.enderFix()

	return descText
	}
}