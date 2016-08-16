//
//  QUE.swift					 // Queue Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class QUE: Segment
{
	var queueInformationDetails_C986: [C986]


init(queueInformationDetails_C986: [C986] = []) {

	self.queueInformationDetails_C986 = queueInformationDetails_C986

	}

func description () -> String {

	var descText = "QUE+"
		descEDISeg(&descText, items: queueInformationDetails_C986)

	descText.endFinal()

	return descText
}

}

