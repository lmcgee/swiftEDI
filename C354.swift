//
//  C354.swift					 // OriginatorDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C354: Composite {			// OriginatorDetails

	var countryCoded_3207: String = "" 
	var currencyCoded_6345: String = "" 
	var languageCoded_3453: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: countryCoded_3207,
			currencyCoded_6345,
			languageCoded_3453)

		descText.enderFix()

	return descText
	}
}