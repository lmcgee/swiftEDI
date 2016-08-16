//
//  EQP.swift					 // Equipment Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class EQP: Segment
{
	var modeOfTransport_C220: C220
	var equipmentIdentification_C360: C360
	var companyIdentification_C306: C306


init(modeOfTransport_C220: C220,
	equipmentIdentification_C360: C360,
	companyIdentification_C306: C306) {

	self.modeOfTransport_C220 = modeOfTransport_C220
	self.equipmentIdentification_C360 = equipmentIdentification_C360
	self.companyIdentification_C306 = companyIdentification_C306

	}

func description () -> String {

	var descText = "EQP+"
		descEDISeg(&descText, items: modeOfTransport_C220)
		descEDISeg(&descText, items: equipmentIdentification_C360)
		descEDISeg(&descText, items: companyIdentification_C306)

	descText.endFinal()

	return descText
}

}

