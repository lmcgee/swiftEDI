//
//  C022.swift					 // PnrOnBookingSystemDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C022: Composite {			// PnrOnBookingSystemDetails

	var carrierIdentification_3127: String  = "" 
	var passengerNameRecordLocator_9823: String  = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: carrierIdentification_3127,
			passengerNameRecordLocator_9823)

		descText.enderFix()

	return descText
	}
}