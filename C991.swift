//
//  C991.swift					 // VehicleInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C991: Composite {			// VehicleInformation

	var equipmentSizeAndType_8154: String = "" 
	var identityNumber_7402: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: equipmentSizeAndType_8154,
			identityNumber_7402)

		descText.enderFix()

	return descText
	}
}