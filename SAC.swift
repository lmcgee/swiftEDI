//
//  SAC.swift					 // Source And Action Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class SAC: Segment
{
	var statusIndicatorCoded_1245: C000
	var placelocationIdentification_3225: C000
	var statusCoded_4405: C000


init(statusIndicatorCoded_1245: C000,
	placelocationIdentification_3225: C000,
	statusCoded_4405: C000) {

	self.statusIndicatorCoded_1245 = statusIndicatorCoded_1245
	self.placelocationIdentification_3225 = placelocationIdentification_3225
	self.statusCoded_4405 = statusCoded_4405

	}

func description () -> String {

	var descText = "SAC+"
		descEDISeg(&descText, items: statusIndicatorCoded_1245)
		descEDISeg(&descText, items: placelocationIdentification_3225)
		descEDISeg(&descText, items: statusCoded_4405)

	descText.endFinal()

	return descText
}

}

