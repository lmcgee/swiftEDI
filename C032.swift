//
//  C032.swift					 // AddressDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C032: Composite {			// AddressDetails

	var addressPurposeCode_3299: String = "" 
	var streetAndNumberPOBox_3042: String = "" 
	var cityName_3164: String = "" 
	var countrySubEntityIdentification_3229: String = "" 
	var countrySubEntityName_3228: String = "" 
	var countryCoded_3207: String = "" 
	var postcodeIdentification_3251: String = "" 
	var freeText_4440: String = "" 
	var placeLocation_3224: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: addressPurposeCode_3299,
			streetAndNumberPOBox_3042,
			cityName_3164,
			countrySubEntityIdentification_3229,
			countrySubEntityName_3228,
			countryCoded_3207,
			postcodeIdentification_3251,
			freeText_4440,
			placeLocation_3224)

		descText.enderFix()

	return descText
	}
}