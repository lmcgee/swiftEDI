//
//  C700.swift					 // DocumentId
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C700: Composite {			// DocumentId

	var processingIndicatorCoded_7365: String = "" 
	var documentMessageNumber_1004: String = "" 
	var countryCoded_3207: String = "" 
	var confirmationIndicator_9813: String = "" 
	var freeText_4440: String = "" 
	var dateTimePeriod1_2380: String = "" 
	var numberOfUnitsQualifier_6353: String = "" 
	var sourceCoded_9890: String = "" 
	var countrySubEntityName_3228: String = "" 
	var cityName_3164: String = "" 
	var partyName_3036: String = "" 
	var dateTimePeriod2_2380: String = "" 
	var surname_3808: String = "" 
	var givenName_3809: String = "" 
	var otherNames_9754: String = "" 
	var confirmationIndicator1_9813: [String] = [] 
	var placeLocation_3224: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: processingIndicatorCoded_7365,
			documentMessageNumber_1004,
			countryCoded_3207,
			confirmationIndicator_9813,
			freeText_4440,
			dateTimePeriod1_2380,
			numberOfUnitsQualifier_6353,
			sourceCoded_9890,
			countrySubEntityName_3228,
			cityName_3164,
			partyName_3036,
			dateTimePeriod2_2380,
			surname_3808,
			givenName_3809,
			otherNames_9754)

		descEDI(&descText, items: confirmationIndicator1_9813)

		descEDI(&descText, items: placeLocation_3224)

		descText.enderFix()

	return descText
	}
}