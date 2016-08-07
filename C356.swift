//
//  C356.swift					 // BaggageStatusDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C356: Composite {			// BaggageStatusDetails

	var cabinClassDesignator_9854: String = "" 
	var equipmentIdentificationNumber_8260: String = "" 
	var statusIndicatorCoded_1245: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: cabinClassDesignator_9854,
			equipmentIdentificationNumber_8260)

		descEDI(&descText, items: statusIndicatorCoded_1245)

		descText.enderFix()

	return descText
	}
}