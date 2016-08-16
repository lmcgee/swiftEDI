//
//  PPD.swift					 // Passenger Personal Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class PPD: Segment
{
	var surname_3808: C000
	var passengerTypeDetails_C017: C017
	var paxIdDetailsInRespondingSystem_C692: C692
	var givenName_3809: C000
	var infantNameDetails_C018: C018
	var paxIdDetailsInQueryingSystem_C690: C690
	var surnameConnectorDetails_C021: C021
	var complexingPassengerIndicator_9867: C000
	var weight_6803: C000
	var paxIdDetailsInThirdPartySystem_C691: C691


init(surname_3808: C000,
	passengerTypeDetails_C017: C017,
	paxIdDetailsInRespondingSystem_C692: C692,
	givenName_3809: C000,
	infantNameDetails_C018: C018,
	paxIdDetailsInQueryingSystem_C690: C690,
	surnameConnectorDetails_C021: C021,
	complexingPassengerIndicator_9867: C000,
	weight_6803: C000,
	paxIdDetailsInThirdPartySystem_C691: C691) {

	self.surname_3808 = surname_3808
	self.passengerTypeDetails_C017 = passengerTypeDetails_C017
	self.paxIdDetailsInRespondingSystem_C692 = paxIdDetailsInRespondingSystem_C692
	self.givenName_3809 = givenName_3809
	self.infantNameDetails_C018 = infantNameDetails_C018
	self.paxIdDetailsInQueryingSystem_C690 = paxIdDetailsInQueryingSystem_C690
	self.surnameConnectorDetails_C021 = surnameConnectorDetails_C021
	self.complexingPassengerIndicator_9867 = complexingPassengerIndicator_9867
	self.weight_6803 = weight_6803
	self.paxIdDetailsInThirdPartySystem_C691 = paxIdDetailsInThirdPartySystem_C691

	}

func description () -> String {

	var descText = "PPD+"
		descEDISeg(&descText, items: surname_3808)
		descEDISeg(&descText, items: passengerTypeDetails_C017)
		descEDISeg(&descText, items: paxIdDetailsInRespondingSystem_C692)
		descEDISeg(&descText, items: givenName_3809)
		descEDISeg(&descText, items: infantNameDetails_C018)
		descEDISeg(&descText, items: paxIdDetailsInQueryingSystem_C690)
		descEDISeg(&descText, items: surnameConnectorDetails_C021)
		descEDISeg(&descText, items: complexingPassengerIndicator_9867)
		descEDISeg(&descText, items: weight_6803)
		descEDISeg(&descText, items: paxIdDetailsInThirdPartySystem_C691)

	descText.endFinal()

	return descText
}

}

