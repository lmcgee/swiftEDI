//
//  C690.swift					 // PaxIdDetailsInQueryingSystem
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C690: Composite {			// PaxIdDetailsInQueryingSystem

	var uniquePassengerReference_9821: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		
		descEDI(&descText, items: uniquePassengerReference_9821)

		descText.enderFix()

	return descText
	}
}