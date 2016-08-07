//
//  C058.swift					 // OverwingSeatRowRange
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C058: Composite {			// OverwingSeatRowRange

	var seatRowNumber_9830: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: seatRowNumber_9830)

		descText.enderFix()

	return descText
	}
}