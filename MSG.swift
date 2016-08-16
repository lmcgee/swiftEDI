//
//  MSG.swift					 // Message Action Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class MSG: Segment
{
	var messageFunctionbusinessDetails_C302: C302
	var responseTypeCoded_4343: C000


init(messageFunctionbusinessDetails_C302: C302,
	responseTypeCoded_4343: C000) {

	self.messageFunctionbusinessDetails_C302 = messageFunctionbusinessDetails_C302
	self.responseTypeCoded_4343 = responseTypeCoded_4343

	}

func description () -> String {

	var descText = "MSG+"
		descEDISeg(&descText, items: messageFunctionbusinessDetails_C302)
		descEDISeg(&descText, items: responseTypeCoded_4343)

	descText.endFinal()

	return descText
}

}

