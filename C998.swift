//
//  C998.swift					 // DiscountInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C998: Composite {			// DiscountInformation

	var adjustmentReasonCoded_4465: String  = "" 
	var percentage_5482: String = "" 
	var partyName_3036: String = "" 
	var numberOfUnits_6350: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: adjustmentReasonCoded_4465,
			percentage_5482,
			partyName_3036,
			numberOfUnits_6350)

		descText.enderFix()

	return descText
	}
}