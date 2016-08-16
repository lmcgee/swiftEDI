//
//  ROD.swift					 // Row Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class ROD: Segment
{
	var seatRowNumber_9830: C000
	var rowCharacteristicsDetails_C049: C049
	var seatOccupationDetails_C051: C051


init(seatRowNumber_9830: C000,
	rowCharacteristicsDetails_C049: C049,
	seatOccupationDetails_C051: C051) {

	self.seatRowNumber_9830 = seatRowNumber_9830
	self.rowCharacteristicsDetails_C049 = rowCharacteristicsDetails_C049
	self.seatOccupationDetails_C051 = seatOccupationDetails_C051

	}

func description () -> String {

	var descText = "ROD+"
		descEDISeg(&descText, items: seatRowNumber_9830)
		descEDISeg(&descText, items: rowCharacteristicsDetails_C049)
		descEDISeg(&descText, items: seatOccupationDetails_C051)

	descText.endFinal()

	return descText
}

}

