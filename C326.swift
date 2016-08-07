//
//  C326.swift					 // FrequentTravellerIdentification
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C326: Composite {			// FrequentTravellerIdentification

	var companyIdentification1_9906: String  = "" 
	var frequentTravelerIdentificationCode_9948: String  = "" 
	var travelerReferenceNumber_9944: String = "" 
	var statusCoded_4405: String = "" 
	var membershipLevel_7456: String = "" 
	var hierarchicalIdNumber_7164: String = "" 
	var itemDescription_7008: String = "" 
	var companyIdentification2_9906: String = "" 
	var passengerPriorityValue_9949: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: companyIdentification1_9906,
			frequentTravelerIdentificationCode_9948,
			travelerReferenceNumber_9944,
			statusCoded_4405,
			membershipLevel_7456,
			hierarchicalIdNumber_7164,
			itemDescription_7008,
			companyIdentification2_9906,
			passengerPriorityValue_9949)

		descText.enderFix()

	return descText
	}
}