//
//  RPI.swift					 // Related Product Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class RPI: Segment
{
	var quantity_6060: C000
	var statusCoded_4405: C000


init(quantity_6060: C000,
	statusCoded_4405: C000) {

	self.quantity_6060 = quantity_6060
	self.statusCoded_4405 = statusCoded_4405

	}

func description () -> String {

	var descText = "RPI+"
		descEDISeg(&descText, items: quantity_6060)
		descEDISeg(&descText, items: statusCoded_4405)

	descText.endFinal()

	return descText
}

}

