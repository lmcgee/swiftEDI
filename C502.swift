//
//  C502.swift					 // MeasurementDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C502: Composite {			// MeasurementDetails

	var measurementDimensionCoded_6313: String = "" 
	var measurementSignificanceCoded_6321: String = "" 
	var measurementAttributeCoded_6155: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: measurementDimensionCoded_6313,
			measurementSignificanceCoded_6321,
			measurementAttributeCoded_6155)

		descText.enderFix()

	return descText
	}
}