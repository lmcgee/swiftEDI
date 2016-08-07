//
//  C986.swift					 // QueueInformationDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C986: Composite {			// QueueInformationDetails

	var itemDescriptionIdentification_7009: String = "" 
	var itemDescription_7008: String = "" 
	var relationshipCoded_9143: String = "" 
	var totalNumberOfItems_7240: String = "" 
	var maximumNumberOfOccurrences_6176: String = "" 
	var statusCoded_4405: String = "" 
	var itemDescriptionIdentification1_7009: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: itemDescriptionIdentification_7009,
			itemDescription_7008,
			relationshipCoded_9143,
			totalNumberOfItems_7240,
			maximumNumberOfOccurrences_6176,
			statusCoded_4405)

		descEDI(&descText, items: itemDescriptionIdentification1_7009)

		descText.enderFix()

	return descText
	}
}