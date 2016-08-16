//
//  DCD.swift					 // Device Control Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class DCD: Segment
{
	var companyIdentification_9906: C000
	var identificationNumber_C206: C206
	var statusIndicatorCoded_1245: C000
	var sequenceNumber_1050: C000
	var materialTypeCoded_9997: C000
	var dataIndicator_9988: C000


init(companyIdentification_9906: C000,
	identificationNumber_C206: C206,
	statusIndicatorCoded_1245: C000,
	sequenceNumber_1050: C000,
	materialTypeCoded_9997: C000,
	dataIndicator_9988: C000) {

	self.companyIdentification_9906 = companyIdentification_9906
	self.identificationNumber_C206 = identificationNumber_C206
	self.statusIndicatorCoded_1245 = statusIndicatorCoded_1245
	self.sequenceNumber_1050 = sequenceNumber_1050
	self.materialTypeCoded_9997 = materialTypeCoded_9997
	self.dataIndicator_9988 = dataIndicator_9988

	}

func description () -> String {

	var descText = "DCD+"
		descEDISeg(&descText, items: companyIdentification_9906)
		descEDISeg(&descText, items: identificationNumber_C206)
		descEDISeg(&descText, items: statusIndicatorCoded_1245)
		descEDISeg(&descText, items: sequenceNumber_1050)
		descEDISeg(&descText, items: materialTypeCoded_9997)
		descEDISeg(&descText, items: dataIndicator_9988)

	descText.endFinal()

	return descText
}

}

