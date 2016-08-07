//
//  C037.swift					 // UpdateBagTagDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C037: Composite {			// UpdateBagTagDetails

	var updateActionCode_9858: String  = "" 
	var carrierIdentification_3127: String  = "" 
	var tagSerialNumber_9835: String  = "" 
	var numberOfConsecutiveTagSerialNumber_9836: String = "" 
	var placeOfDestinationCoded_3259: String = "" 
	var airlineCodeNumber_3810: String = "" 
	var onlineInterlineIndicator_9885: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: updateActionCode_9858,
			carrierIdentification_3127,
			tagSerialNumber_9835,
			numberOfConsecutiveTagSerialNumber_9836,
			placeOfDestinationCoded_3259,
			airlineCodeNumber_3810,
			onlineInterlineIndicator_9885)

		descText.enderFix()

	return descText
	}
}