//
//  C993.swift					 // TourDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C993: Composite {			// TourDetails

	var productIdentification_9908: String = "" 
	var partyName_3036: String = "" 
	var lengthDimension_6168: String = "" 
	var numberOfStops_9924: String = "" 
	var daysOfOperation_9928: String = "" 
	var numberOfUnits_6350: String = "" 
	var quantity_6060: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: productIdentification_9908,
			partyName_3036,
			lengthDimension_6168,
			numberOfStops_9924,
			daysOfOperation_9928,
			numberOfUnits_6350,
			quantity_6060)

		descText.enderFix()

	return descText
	}
}