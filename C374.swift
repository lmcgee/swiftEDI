//
//  C374.swift					 // CompanyRoleIdentification
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C374: Composite {			// CompanyRoleIdentification

	var transportStageQualifier_8051: String  = "" 
	var companyIdentification_9906: String  = "" 
	var productIdentification_9908: String = "" 
	var productIdentificationCharacteristic_9914: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: transportStageQualifier_8051,
			companyIdentification_9906,
			productIdentification_9908,
			productIdentificationCharacteristic_9914)

		descText.enderFix()

	return descText
	}
}