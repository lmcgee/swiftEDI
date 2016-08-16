//
//  PDI.swift					 // Product Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class PDI: Segment
{
	var productDetailsQualifier_9970: C000
	var productDetails_C304: [C304]


init(productDetailsQualifier_9970: C000,
	productDetails_C304: [C304] = []) {

	self.productDetailsQualifier_9970 = productDetailsQualifier_9970
	self.productDetails_C304 = productDetails_C304

	}

func description () -> String {

	var descText = "PDI+"
		descEDISeg(&descText, items: productDetailsQualifier_9970)
		descEDISeg(&descText, items: productDetails_C304)

	descText.endFinal()

	return descText
}

}

