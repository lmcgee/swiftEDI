//
//  TXD.swift					 // Tax Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class TXD: Segment
{
	var dutytaxfeeCategoryCoded_5305: C000
	var taxDetails_C668: [C668]


init(dutytaxfeeCategoryCoded_5305: C000,
	taxDetails_C668: [C668] = []) {

	self.dutytaxfeeCategoryCoded_5305 = dutytaxfeeCategoryCoded_5305
	self.taxDetails_C668 = taxDetails_C668

	}

func description () -> String {

	var descText = "TXD+"
		descEDISeg(&descText, items: dutytaxfeeCategoryCoded_5305)
		descEDISeg(&descText, items: taxDetails_C668)

	descText.endFinal()

	return descText
}

}

