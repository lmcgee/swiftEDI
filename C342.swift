//
//  C342.swift					 // CabinClassDesignation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C342: Composite {			// CabinClassDesignation

	var cabinClassDesignator_9854: String  = "" 
	var characteristicIdentification_7037: String = "" 
	var cabinClassOfServiceCoded_9873: String = "" 
	var cabinCompartmentDesignator_9992: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: cabinClassDesignator_9854,
			characteristicIdentification_7037,
			cabinClassOfServiceCoded_9873,
			cabinCompartmentDesignator_9992)

		descText.enderFix()

	return descText
	}
}