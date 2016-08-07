//
//  C314.swift					 // AdditionalProductDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C314: Composite {			// AdditionalProductDetails

	var typeOfMeansOfTransportIdentification_8179: String = "" 
	var numberOfStops_9924: String = "" 
	var legDuration_9926: String = "" 
	var percentage_5482: String = "" 
	var daysOfOperation_9928: String = "" 
	var dateTimePeriod_2380: String = "" 
	var complexingFlightIndicator_9950: String = "" 
	var placeLocationIdentification_3225: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: typeOfMeansOfTransportIdentification_8179,
			numberOfStops_9924,
			legDuration_9926,
			percentage_5482,
			daysOfOperation_9928,
			dateTimePeriod_2380,
			complexingFlightIndicator_9950)

		descEDI(&descText, items: placeLocationIdentification_3225)

		descText.enderFix()

	return descText
	}
}