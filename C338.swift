//
//  C338.swift					 // TrafficRestrictionDetails
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C338: Composite {			// TrafficRestrictionDetails

	var trafficRestrictionCoded_9930: String = "" 
	var trafficRestrictionTypeCoded_9968: String = "" 
	var trafficRestrictionQualifierCoded_9966: String = "" 
	var freeText_4440: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: trafficRestrictionCoded_9930,
			trafficRestrictionTypeCoded_9968,
			trafficRestrictionQualifierCoded_9966,
			freeText_4440)

		descText.enderFix()

	return descText
	}
}