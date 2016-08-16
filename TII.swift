//
//  TII.swift					 // Travel Itinerary Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class TII: Segment
{
	var itemNumber_7140: C000
	var numericReferenceIdentification_9753: C000
	var productDatetime_C310: C310
	var movementTypeCoded_8335: C000
	var cabinCompartmentDesignator_9992: C000
	var productTypeDetails_C309: C309
	var placelocationIdentification_3225: C000
	var ticketNumberDetails_C667: C667
	var statusCoded_4405: C000


init(itemNumber_7140: C000,
	numericReferenceIdentification_9753: C000,
	productDatetime_C310: C310,
	movementTypeCoded_8335: C000,
	cabinCompartmentDesignator_9992: C000,
	productTypeDetails_C309: C309,
	placelocationIdentification_3225: C000,
	ticketNumberDetails_C667: C667,
	statusCoded_4405: C000) {

	self.itemNumber_7140 = itemNumber_7140
	self.numericReferenceIdentification_9753 = numericReferenceIdentification_9753
	self.productDatetime_C310 = productDatetime_C310
	self.movementTypeCoded_8335 = movementTypeCoded_8335
	self.cabinCompartmentDesignator_9992 = cabinCompartmentDesignator_9992
	self.productTypeDetails_C309 = productTypeDetails_C309
	self.placelocationIdentification_3225 = placelocationIdentification_3225
	self.ticketNumberDetails_C667 = ticketNumberDetails_C667
	self.statusCoded_4405 = statusCoded_4405

	}

func description () -> String {

	var descText = "TII+"
		descEDISeg(&descText, items: itemNumber_7140)
		descEDISeg(&descText, items: numericReferenceIdentification_9753)
		descEDISeg(&descText, items: productDatetime_C310)
		descEDISeg(&descText, items: movementTypeCoded_8335)
		descEDISeg(&descText, items: cabinCompartmentDesignator_9992)
		descEDISeg(&descText, items: productTypeDetails_C309)
		descEDISeg(&descText, items: placelocationIdentification_3225)
		descEDISeg(&descText, items: ticketNumberDetails_C667)
		descEDISeg(&descText, items: statusCoded_4405)

	descText.endFinal()

	return descText
}

}

