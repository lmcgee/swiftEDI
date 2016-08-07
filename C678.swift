//
//  C678.swift					 // SegmentRepetitionControlDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C678: Composite {			// SegmentRepetitionControlDetails

	var quantity_6060: String = "" 
	var numberOfUnits_6350: String = "" 
	var totalNumberOfItems_7240: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: quantity_6060,
			numberOfUnits_6350,
			totalNumberOfItems_7240)

		descText.enderFix()

	return descText
	}
}