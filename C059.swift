//
//  C059.swift					 // PlaceOfOriginOfARequest
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C059: Composite {			// PlaceOfOriginOfARequest

	var carrierIdentification_3127: String = "" 
	var placeOfOriginOfBusinessCoded_3800: String = "" 
	var countryWhereRequestOriginated_3805: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: carrierIdentification_3127,
			placeOfOriginOfBusinessCoded_3800,
			countryWhereRequestOriginated_3805)

		descText.enderFix()

	return descText
	}
}