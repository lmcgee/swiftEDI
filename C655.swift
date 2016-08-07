//
//  C655.swift					 // MessageApplicationProductInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C655: Composite {			// MessageApplicationProductInformation

	var messageFunctionCoded_1225: String = "" 
	var applicationIdentification_9755: String = "" 
	var applicationIdentificationQualifier_9756: String = "" 
	var countryCoded_3207: String = "" 
	var firstDate_9916: String = "" 
	var secondDate_9920: String = "" 
	var numberOfUnits_6350: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: messageFunctionCoded_1225,
			applicationIdentification_9755,
			applicationIdentificationQualifier_9756,
			countryCoded_3207,
			firstDate_9916,
			secondDate_9920,
			numberOfUnits_6350)

		descText.enderFix()

	return descText
	}
}