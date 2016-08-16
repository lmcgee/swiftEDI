//
//  CFI.swift					 // Corporate Fare Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class CFI: Segment
{
	var corporateFareIdentifiers_C981: [C981]


init(corporateFareIdentifiers_C981: [C981] = []) {

	self.corporateFareIdentifiers_C981 = corporateFareIdentifiers_C981

	}

func description () -> String {

	var descText = "CFI+"
		descEDISeg(&descText, items: corporateFareIdentifiers_C981)

	descText.endFinal()

	return descText
}

}

