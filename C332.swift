//
//  C332.swift					 // SpecialRequirementsDataDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C332: Composite {			// SpecialRequirementsDataDetails

	var specialRequirementData_9960: String = "" 
	var measureUnitQualifier_6411: String = "" 
	var travelerReferenceNumber_9944: String = "" 
	var seatCharacteristicCoded_9825: [String] = [] 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: specialRequirementData_9960,
			measureUnitQualifier_6411,
			travelerReferenceNumber_9944)

		descEDI(&descText, items: seatCharacteristicCoded_9825)

		descText.enderFix()

	return descText
	}
}