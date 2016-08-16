//
//  CPS.swift					 // Consignment Packing Sequence 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class CPS: Segment
{
	var hierarchicalIdNumber_7164: C000
	var hierarchicalParentId_7166: C000
	var packagingLevelCoded_7075: C000


init(hierarchicalIdNumber_7164: C000,
	hierarchicalParentId_7166: C000,
	packagingLevelCoded_7075: C000) {

	self.hierarchicalIdNumber_7164 = hierarchicalIdNumber_7164
	self.hierarchicalParentId_7166 = hierarchicalParentId_7166
	self.packagingLevelCoded_7075 = packagingLevelCoded_7075

	}

func description () -> String {

	var descText = "CPS+"
		descEDISeg(&descText, items: hierarchicalIdNumber_7164)
		descEDISeg(&descText, items: hierarchicalParentId_7166)
		descEDISeg(&descText, items: packagingLevelCoded_7075)

	descText.endFinal()

	return descText
}

}

