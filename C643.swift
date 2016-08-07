//
//  C643.swift					 // RateTariffClassInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C643: Composite {			// RateTariffClassInformation

	var rateTariffClass1_5242: String = "" 
	var dataIndicator1_9988: String = "" 
	var rateTariffClass2_5242: String = "" 
	var dataIndicator2_9988: String = "" 
	var rateTariffClass3_5242: String = "" 
	var dataIndicator3_9988: String = "" 
	var rateTariffClass4_5242: String = "" 
	var dataIndicator4_9988: String = "" 
	var rateTariffClass5_5242: String = "" 
	var dataIndicator5_9988: String = "" 
	var rateTariffClass6_5242: String = "" 
	var dataIndicator6_9988: String = "" 
	var rateTariffClass7_5242: String = "" 
	var dataIndicator7_9988: String = "" 
	var rateTariffClass8_5242: String = "" 
	var dataIndicator8_9988: String = "" 
	var rateTariffClass9_5242: String = "" 
	var dataIndicator9_9988: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: rateTariffClass1_5242,
			dataIndicator1_9988,
			rateTariffClass2_5242,
			dataIndicator2_9988,
			rateTariffClass3_5242,
			dataIndicator3_9988,
			rateTariffClass4_5242,
			dataIndicator4_9988,
			rateTariffClass5_5242,
			dataIndicator5_9988,
			rateTariffClass6_5242,
			dataIndicator6_9988,
			rateTariffClass7_5242,
			dataIndicator7_9988,
			rateTariffClass8_5242,
			dataIndicator8_9988,
			rateTariffClass9_5242,
			dataIndicator9_9988)

		descText.enderFix()

	return descText
	}
}