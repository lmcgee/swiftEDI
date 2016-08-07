//
//  C959.swift					 // ServiceDateTimeLocationInformation
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C959: Composite {			// ServiceDateTimeLocationInformation

	var specialServiceCoded_7161: String  = "" 
	var firstTime_9918: String = "" 
	var secondTime_9922: String = "" 
	var firstDate_9916: String = "" 
	var placeLocation_3224: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: specialServiceCoded_7161,
			firstTime_9918,
			secondTime_9922,
			firstDate_9916,
			placeLocation_3224)

		descText.enderFix()

	return descText
	}
}