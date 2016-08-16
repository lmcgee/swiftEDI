//
//  DVI.swift					 // Device Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class DVI: Segment
{
	var identityNumber_7402: C000
	var handlingInstructionsCoded_4079: C000
	var cabinClassDesignator_9854: C000
	var placelocationIdentification_3225: C000
	var placelocationIdentification1_3225: C000


init(identityNumber_7402: C000,
	handlingInstructionsCoded_4079: C000,
	cabinClassDesignator_9854: C000,
	placelocationIdentification_3225: C000,
	placelocationIdentification1_3225: C000) {

	self.identityNumber_7402 = identityNumber_7402
	self.handlingInstructionsCoded_4079 = handlingInstructionsCoded_4079
	self.cabinClassDesignator_9854 = cabinClassDesignator_9854
	self.placelocationIdentification_3225 = placelocationIdentification_3225
	self.placelocationIdentification1_3225 = placelocationIdentification1_3225

	}

func description () -> String {

	var descText = "DVI+"
		descEDISeg(&descText, items: identityNumber_7402)
		descEDISeg(&descText, items: handlingInstructionsCoded_4079)
		descEDISeg(&descText, items: cabinClassDesignator_9854)
		descEDISeg(&descText, items: placelocationIdentification_3225)
		descEDISeg(&descText, items: placelocationIdentification1_3225)

	descText.endFinal()

	return descText
}

}

