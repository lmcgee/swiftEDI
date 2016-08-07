//
//  C984.swift					 // AssociatedChargesInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C984: Composite {			// AssociatedChargesInformation

	var chargeUnitCoded_5901: String = "" 
	var monetaryAmount_5004: String = "" 
	var itemDescription_7008: String = "" 
	var quantity_6060: String = "" 
	var chargePeriodTypeCoded_2901: String = "" 
	var currencyCoded_6345: String = "" 
	var placeLocationIdentification_3225: String = "" 
	var freeText_4440: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: chargeUnitCoded_5901,
			monetaryAmount_5004,
			itemDescription_7008,
			quantity_6060,
			chargePeriodTypeCoded_2901,
			currencyCoded_6345,
			placeLocationIdentification_3225,
			freeText_4440)

		descText.enderFix()

	return descText
	}
}