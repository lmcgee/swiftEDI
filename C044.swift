//
//  C044.swift					 // SeatDefinitionDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C044: Composite {			// SeatDefinitionDetails

	var noSmokingIndicator_9807: String = "" 
	var cabinClassDesignator_9854: String = "" 
	var cabinClassOfServiceCoded_9873: String = "" 
	var freeText_4440: String = "" 
	var placeOfDepartureCoded_3215: String = "" 
	var placeOfDestinationCoded_3259: String = "" 
	var equipmentCode_7800: String = "" 
	var seatRequestFulfilledIndicator_9862: String = "" 
	var seatCharacteristicCoded_9825: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: noSmokingIndicator_9807,
			cabinClassDesignator_9854,
			cabinClassOfServiceCoded_9873,
			freeText_4440,
			placeOfDepartureCoded_3215,
			placeOfDestinationCoded_3259,
			equipmentCode_7800,
			seatRequestFulfilledIndicator_9862)

		descEDI(&descText, items: seatCharacteristicCoded_9825)

		descText.enderFix()

	return descText
	}
}