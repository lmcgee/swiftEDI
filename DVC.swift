//
//  DVC.swift					 // Device Characteristics 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class DVC: Segment
{
	var availabilityOfABoardingPassPrinter_9817: C000
	var limitForBagTagPrinting_9818: C000


init(availabilityOfABoardingPassPrinter_9817: C000,
	limitForBagTagPrinting_9818: C000) {

	self.availabilityOfABoardingPassPrinter_9817 = availabilityOfABoardingPassPrinter_9817
	self.limitForBagTagPrinting_9818 = limitForBagTagPrinting_9818

	}

func description () -> String {

	var descText = "DVC+"
		descEDISeg(&descText, items: availabilityOfABoardingPassPrinter_9817)
		descEDISeg(&descText, items: limitForBagTagPrinting_9818)

	descText.endFinal()

	return descText
}

}

