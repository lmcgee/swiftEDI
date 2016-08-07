//
//  C997.swift					 // AccommodationAllocationInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C997: Composite {			// AccommodationAllocationInformation

	var referenceNumber_1154: String  = "" 
	var relationshipCoded_9143: String  = "" 
	var accommodationType_7904: String = "" 
	var characteristicCoded_7907: String = "" 
	var specialRequirementData_9960: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: referenceNumber_1154,
			relationshipCoded_9143,
			accommodationType_7904,
			characteristicCoded_7907)

		descEDI(&descText, items: specialRequirementData_9960)

		descText.enderFix()

	return descText
	}
}