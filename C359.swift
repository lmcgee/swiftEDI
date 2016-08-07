//
//  C359.swift					 // EquipmentInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C359: Composite {			// EquipmentInformation

	var modeOfTransportCoded_8067: String  = "" 
	var typeOfMeansOfTransportIdentification_8179: String  = "" 
	var articleAvailabilityCoded_7011: String  = "" 
	var typeOfCallAtPort_9984: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: modeOfTransportCoded_8067,
			typeOfMeansOfTransportIdentification_8179,
			articleAvailabilityCoded_7011,
			typeOfCallAtPort_9984)

		descText.enderFix()

	return descText
	}
}