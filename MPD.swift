//
//  MPD.swift					 // Message Processing Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class MPD: Segment
{
	var messageConditions_C676: C676
	var messageEquipmentDetails_C677: [C677]


init(messageConditions_C676: C676,
	messageEquipmentDetails_C677: [C677] = []) {

	self.messageConditions_C676 = messageConditions_C676
	self.messageEquipmentDetails_C677 = messageEquipmentDetails_C677

	}

func description () -> String {

	var descText = "MPD+"
		descEDISeg(&descText, items: messageConditions_C676)
		descEDISeg(&descText, items: messageEquipmentDetails_C677)

	descText.endFinal()

	return descText
}

}

