//
//  C344.swift					 // GenericDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C344: Composite {			// GenericDetails

	var cabinClassDesignator_9854: String = "" 
	var noSmokingIndicator_9807: String = "" 
	var cabinClassOfServiceCoded_9873: String = "" 
	var cabinCompartmentDesignator_9992: String = "" 
	var seatCharacteristicCoded_9825: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: cabinClassDesignator_9854,
			noSmokingIndicator_9807,
			cabinClassOfServiceCoded_9873,
			cabinCompartmentDesignator_9992)

		descEDI(&descText, items: seatCharacteristicCoded_9825)

		descText.enderFix()

	return descText
	}
}