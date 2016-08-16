//
//  UBD.swift					 // Update Baggage Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class UBD: Segment
{
	var updateCheckedBaggageDetails_C035: C035
	var updateHandBaggageDetails_C036: C036
	var bagPoolReference_C694: C694
	var updateBagTagDetails_C037: [C037]


init(updateCheckedBaggageDetails_C035: C035,
	updateHandBaggageDetails_C036: C036,
	bagPoolReference_C694: C694,
	updateBagTagDetails_C037: [C037] = []) {

	self.updateCheckedBaggageDetails_C035 = updateCheckedBaggageDetails_C035
	self.updateHandBaggageDetails_C036 = updateHandBaggageDetails_C036
	self.bagPoolReference_C694 = bagPoolReference_C694
	self.updateBagTagDetails_C037 = updateBagTagDetails_C037

	}

func description () -> String {

	var descText = "UBD+"
		descEDISeg(&descText, items: updateCheckedBaggageDetails_C035)
		descEDISeg(&descText, items: updateHandBaggageDetails_C036)
		descEDISeg(&descText, items: bagPoolReference_C694)
		descEDISeg(&descText, items: updateBagTagDetails_C037)

	descText.endFinal()

	return descText
}

}

