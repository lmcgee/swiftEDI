//
//  S011.swift					 // DataElementIdentification
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class S011: Composite {			// DataElementIdentification

	var erroneousDataElementPositionInSegment_0098: String  = "" 
	var erroneousComponentDataElementPosition_0104: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: erroneousDataElementPositionInSegment_0098,
			erroneousComponentDataElementPosition_0104)

		descText.enderFix()

	return descText
	}
}