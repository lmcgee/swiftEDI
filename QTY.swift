//
//  QTY.swift					 // Quantity 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class QTY: Segment
{
	var quantityDetails_C186: C186
	var quantityDetails1_C186: [C186]


init(quantityDetails_C186: C186,
	quantityDetails1_C186: [C186] = []) {

	self.quantityDetails_C186 = quantityDetails_C186
	self.quantityDetails1_C186 = quantityDetails1_C186

	}

func description () -> String {

	var descText = "QTY+"
		descEDISeg(&descText, items: quantityDetails_C186)
		descEDISeg(&descText, items: quantityDetails1_C186)

	descText.endFinal()

	return descText
}

}

