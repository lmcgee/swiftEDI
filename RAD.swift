//
//  RAD.swift					 // Response Analysis Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class RAD: Segment
{
	var responseTypeCoded_9868: C000
	var processingStatusCode_9869: C000


init(responseTypeCoded_9868: C000,
	processingStatusCode_9869: C000) {

	self.responseTypeCoded_9868 = responseTypeCoded_9868
	self.processingStatusCode_9869 = processingStatusCode_9869

	}

func description () -> String {

	var descText = "RAD+"
		descEDISeg(&descText, items: responseTypeCoded_9868)
		descEDISeg(&descText, items: processingStatusCode_9869)

	descText.endFinal()

	return descText
}

}

