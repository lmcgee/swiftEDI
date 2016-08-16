//
//  DMC.swift					 // Default Message Characteristics 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class DMC: Segment
{
	var confirmationIndicator_9813: C000
	var weightUnitCode_6801: C000
	var maximumNumberOfFlightsToBeHandled_9815: C000
	var numberOfUnits_6350: C000


init(confirmationIndicator_9813: C000,
	weightUnitCode_6801: C000,
	maximumNumberOfFlightsToBeHandled_9815: C000,
	numberOfUnits_6350: C000) {

	self.confirmationIndicator_9813 = confirmationIndicator_9813
	self.weightUnitCode_6801 = weightUnitCode_6801
	self.maximumNumberOfFlightsToBeHandled_9815 = maximumNumberOfFlightsToBeHandled_9815
	self.numberOfUnits_6350 = numberOfUnits_6350

	}

func description () -> String {

	var descText = "DMC+"
		descEDISeg(&descText, items: confirmationIndicator_9813)
		descEDISeg(&descText, items: weightUnitCode_6801)
		descEDISeg(&descText, items: maximumNumberOfFlightsToBeHandled_9815)
		descEDISeg(&descText, items: numberOfUnits_6350)

	descText.endFinal()

	return descText
}

}

