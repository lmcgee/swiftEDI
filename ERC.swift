//
//  ERC.swift					 // Application Error Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class ERC: Segment
{
	var applicationErrorDetail_C901: C901


init(applicationErrorDetail_C901: C901) {

	self.applicationErrorDetail_C901 = applicationErrorDetail_C901

	}

func description () -> String {

	var descText = "ERC+"
		descEDISeg(&descText, items: applicationErrorDetail_C901)

	descText.endFinal()

	return descText
}

}

