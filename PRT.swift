//
//  PRT.swift					 // Terminaltime Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class PRT: Segment
{
	var locationIdentification_C517: C517
	var timeInformation_C362: C362
	var utclocalTimeVariation_9986: C000
	var timeInformation1_C362: C362
	var utclocalTimeVariation1_9986: C000
	var terminalInformation_C366: [C366]


init(locationIdentification_C517: C517,
	timeInformation_C362: C362,
	utclocalTimeVariation_9986: C000,
	timeInformation1_C362: C362,
	utclocalTimeVariation1_9986: C000,
	terminalInformation_C366: [C366] = []) {

	self.locationIdentification_C517 = locationIdentification_C517
	self.timeInformation_C362 = timeInformation_C362
	self.utclocalTimeVariation_9986 = utclocalTimeVariation_9986
	self.timeInformation1_C362 = timeInformation1_C362
	self.utclocalTimeVariation1_9986 = utclocalTimeVariation1_9986
	self.terminalInformation_C366 = terminalInformation_C366

	}

func description () -> String {

	var descText = "PRT+"
		descEDISeg(&descText, items: locationIdentification_C517)
		descEDISeg(&descText, items: timeInformation_C362)
		descEDISeg(&descText, items: utclocalTimeVariation_9986)
		descEDISeg(&descText, items: timeInformation1_C362)
		descEDISeg(&descText, items: utclocalTimeVariation1_9986)
		descEDISeg(&descText, items: terminalInformation_C366)

	descText.endFinal()

	return descText
}

}

