//
//  CBD.swift					 // Cabin Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class CBD: Segment
{
	var cabinClassDesignation_C342: C342
	var cabinClassSeatRowRangeDetails_C052: C052
	var cabinClassLocation_9863: C000
	var smokingAreaSeatRowRangeDetails_C053: C053
	var seatOccupationDefaultIndicator_9883: C000
	var overwingSeatRowRange_C058: C058
	var cabinWidthAndColumnDetails_C054: C054


init(cabinClassDesignation_C342: C342,
	cabinClassSeatRowRangeDetails_C052: C052,
	cabinClassLocation_9863: C000,
	smokingAreaSeatRowRangeDetails_C053: C053,
	seatOccupationDefaultIndicator_9883: C000,
	overwingSeatRowRange_C058: C058,
	cabinWidthAndColumnDetails_C054: C054) {

	self.cabinClassDesignation_C342 = cabinClassDesignation_C342
	self.cabinClassSeatRowRangeDetails_C052 = cabinClassSeatRowRangeDetails_C052
	self.cabinClassLocation_9863 = cabinClassLocation_9863
	self.smokingAreaSeatRowRangeDetails_C053 = smokingAreaSeatRowRangeDetails_C053
	self.seatOccupationDefaultIndicator_9883 = seatOccupationDefaultIndicator_9883
	self.overwingSeatRowRange_C058 = overwingSeatRowRange_C058
	self.cabinWidthAndColumnDetails_C054 = cabinWidthAndColumnDetails_C054

	}

func description () -> String {

	var descText = "CBD+"
		descEDISeg(&descText, items: cabinClassDesignation_C342)
		descEDISeg(&descText, items: cabinClassSeatRowRangeDetails_C052)
		descEDISeg(&descText, items: cabinClassLocation_9863)
		descEDISeg(&descText, items: smokingAreaSeatRowRangeDetails_C053)
		descEDISeg(&descText, items: seatOccupationDefaultIndicator_9883)
		descEDISeg(&descText, items: overwingSeatRowRange_C058)
		descEDISeg(&descText, items: cabinWidthAndColumnDetails_C054)

	descText.endFinal()

	return descText
}

}

