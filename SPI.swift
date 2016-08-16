//
//  SPI.swift					 // Specific Data Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class SPI: Segment
{
	var dataTypeInformation_C658: C658
	var dataInformation_C659: [C659]


init(dataTypeInformation_C658: C658,
	dataInformation_C659: [C659] = []) {

	self.dataTypeInformation_C658 = dataTypeInformation_C658
	self.dataInformation_C659 = dataInformation_C659

	}

func description () -> String {

	var descText = "SPI+"
		descEDISeg(&descText, items: dataTypeInformation_C658)
		descEDISeg(&descText, items: dataInformation_C659)

	descText.endFinal()

	return descText
}

}

