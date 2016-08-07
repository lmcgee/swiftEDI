//
//  C523.swift					 // NumberOfUnitDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C523: Composite {			// NumberOfUnitDetails

	var numberOfUnits_6350: String = "" 
	var numberOfUnitsQualifier_6353: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: numberOfUnits_6350,
			numberOfUnitsQualifier_6353)

		descText.enderFix()

	return descText
	}
}