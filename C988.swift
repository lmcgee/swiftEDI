//
//  C988.swift					 // SubQueueInformationDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C988: Composite {			// SubQueueInformationDetails

	var identificationTypeCoded_9893: String = "" 
	var itemNumber_7140: String = "" 
	var totalNumberOfItems_7240: String = "" 
	var maximumNumberOfOccurrences_6176: String = "" 
	var statusCoded_4405: String = "" 
	var itemDescription_7008: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: identificationTypeCoded_9893,
			itemNumber_7140,
			totalNumberOfItems_7240,
			maximumNumberOfOccurrences_6176,
			statusCoded_4405,
			itemDescription_7008)

		descText.enderFix()

	return descText
	}
}