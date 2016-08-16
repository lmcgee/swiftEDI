//
//  IMD.swift					 // Item Description 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class IMD: Segment
{
	var itemDescriptionTypeCoded_7077: C000
	var itemCharacteristicCoded_7081: C000
	var itemDescription_C273: C273
	var surfacelayerIndicatorCoded_7383: C000


init(itemDescriptionTypeCoded_7077: C000,
	itemCharacteristicCoded_7081: C000,
	itemDescription_C273: C273,
	surfacelayerIndicatorCoded_7383: C000) {

	self.itemDescriptionTypeCoded_7077 = itemDescriptionTypeCoded_7077
	self.itemCharacteristicCoded_7081 = itemCharacteristicCoded_7081
	self.itemDescription_C273 = itemDescription_C273
	self.surfacelayerIndicatorCoded_7383 = surfacelayerIndicatorCoded_7383

	}

func description () -> String {

	var descText = "IMD+"
		descEDISeg(&descText, items: itemDescriptionTypeCoded_7077)
		descEDISeg(&descText, items: itemCharacteristicCoded_7081)
		descEDISeg(&descText, items: itemDescription_C273)
		descEDISeg(&descText, items: surfacelayerIndicatorCoded_7383)

	descText.endFinal()

	return descText
}

}

