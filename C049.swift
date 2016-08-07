//
//  C049.swift					 // RowCharacteristicsDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C049: Composite {			// RowCharacteristicsDetails

	var rowCharacteristic_9864: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: rowCharacteristic_9864)

		descText.enderFix()

	return descText
	}
}