//
//  UPD.swift					 // Update Personal Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class UPD: Segment
{
	var updateActionCode_9858: C000
	var surname_3808: C000
	var passengerWithInfantIndicator_9884: C000
	var givenName_3809: C000
	var infantNameDetails_C018: C018
	var paxIdDetailsInQueryingSystem_C690: C690
	var weight_6803: C000


init(updateActionCode_9858: C000,
	surname_3808: C000,
	passengerWithInfantIndicator_9884: C000,
	givenName_3809: C000,
	infantNameDetails_C018: C018,
	paxIdDetailsInQueryingSystem_C690: C690,
	weight_6803: C000) {

	self.updateActionCode_9858 = updateActionCode_9858
	self.surname_3808 = surname_3808
	self.passengerWithInfantIndicator_9884 = passengerWithInfantIndicator_9884
	self.givenName_3809 = givenName_3809
	self.infantNameDetails_C018 = infantNameDetails_C018
	self.paxIdDetailsInQueryingSystem_C690 = paxIdDetailsInQueryingSystem_C690
	self.weight_6803 = weight_6803

	}

func description () -> String {

	var descText = "UPD+"
		descEDISeg(&descText, items: updateActionCode_9858)
		descEDISeg(&descText, items: surname_3808)
		descEDISeg(&descText, items: passengerWithInfantIndicator_9884)
		descEDISeg(&descText, items: givenName_3809)
		descEDISeg(&descText, items: infantNameDetails_C018)
		descEDISeg(&descText, items: paxIdDetailsInQueryingSystem_C690)
		descEDISeg(&descText, items: weight_6803)

	descText.endFinal()

	return descText
}

}

