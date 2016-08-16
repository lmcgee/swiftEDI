//
//  TKT.swift					 // Ticket Number Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class TKT: Segment
{
	var ticketNumberDetails_C667: C667


init(ticketNumberDetails_C667: C667) {

	self.ticketNumberDetails_C667 = ticketNumberDetails_C667

	}

func description () -> String {

	var descText = "TKT+"
		descEDISeg(&descText, items: ticketNumberDetails_C667)

	descText.endFinal()

	return descText
}

}

