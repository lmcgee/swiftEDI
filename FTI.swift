//
//  FTI.swift					 // Frequent Traveller Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class FTI: Segment
{
	var frequentTravellerIdentification_C326: C326
	var frequentTravellerIdentification1_C326: [C326]


init(frequentTravellerIdentification_C326: C326,
	frequentTravellerIdentification1_C326: [C326] = []) {

	self.frequentTravellerIdentification_C326 = frequentTravellerIdentification_C326
	self.frequentTravellerIdentification1_C326 = frequentTravellerIdentification1_C326

	}

func description () -> String {

	var descText = "FTI+"
		descEDISeg(&descText, items: frequentTravellerIdentification_C326)
		descEDISeg(&descText, items: frequentTravellerIdentification1_C326)

	descText.endFinal()

	return descText
}

}

