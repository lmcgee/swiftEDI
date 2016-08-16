//
//  DIM.swift					 // Dimensions 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class DIM: Segment
{
	var dimensionQualifier_6145: C000
	var dimensions_C211: C211


init(dimensionQualifier_6145: C000,
	dimensions_C211: C211) {

	self.dimensionQualifier_6145 = dimensionQualifier_6145
	self.dimensions_C211 = dimensions_C211

	}

func description () -> String {

	var descText = "DIM+"
		descEDISeg(&descText, items: dimensionQualifier_6145)
		descEDISeg(&descText, items: dimensions_C211)

	descText.endFinal()

	return descText
}

}

