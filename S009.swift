//
//  S009.swift					 // MessageIdentifier
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class S009: Composite {			// MessageIdentifier

	var messageType_0065: String  = "" 
	var messageTypeVersionNumber_0052: String  = "" 
	var messageTypeReleaseNumber_0054: String  = "" 
	var controllingAgencyCoded_0051: String  = "" 
	var associationAssignedCode_0057: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: messageType_0065,
			messageTypeVersionNumber_0052,
			messageTypeReleaseNumber_0054,
			controllingAgencyCoded_0051,
			associationAssignedCode_0057)

		descText.enderFix()

	return descText
	}
}