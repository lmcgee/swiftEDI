//
//  PER.swift					 // Datetimeperiod 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class PER: Segment
{
	var datetimeperiod_C507: C507
	var frequencyValue_6072: C000
	var frequencyQualifier_6071: C000
	var statusIndicatorCoded_1245: C000


init(datetimeperiod_C507: C507,
	frequencyValue_6072: C000,
	frequencyQualifier_6071: C000,
	statusIndicatorCoded_1245: C000) {

	self.datetimeperiod_C507 = datetimeperiod_C507
	self.frequencyValue_6072 = frequencyValue_6072
	self.frequencyQualifier_6071 = frequencyQualifier_6071
	self.statusIndicatorCoded_1245 = statusIndicatorCoded_1245

	}

func description () -> String {

	var descText = "PER+"
		descEDISeg(&descText, items: datetimeperiod_C507)
		descEDISeg(&descText, items: frequencyValue_6072)
		descEDISeg(&descText, items: frequencyQualifier_6071)
		descEDISeg(&descText, items: statusIndicatorCoded_1245)

	descText.endFinal()

	return descText
}

}

