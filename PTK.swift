//
//  PTK.swift					 // Pricingticketing Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class PTK: Segment
{
	var pricingticketingInformation_C664: C664
	var pricetariffTypeCoded_5379: C000
	var productDatetime_C310: C310
	var companyIdentification_C306: C306
	var companyIdentificationNumbers_C665: C665
	var locationDetails_C666: C666
	var locationDetails1_C666: C666
	var identityNumber_7402: C000
	var monetaryAmount_5004: C000


init(pricingticketingInformation_C664: C664,
	pricetariffTypeCoded_5379: C000,
	productDatetime_C310: C310,
	companyIdentification_C306: C306,
	companyIdentificationNumbers_C665: C665,
	locationDetails_C666: C666,
	locationDetails1_C666: C666,
	identityNumber_7402: C000,
	monetaryAmount_5004: C000) {

	self.pricingticketingInformation_C664 = pricingticketingInformation_C664
	self.pricetariffTypeCoded_5379 = pricetariffTypeCoded_5379
	self.productDatetime_C310 = productDatetime_C310
	self.companyIdentification_C306 = companyIdentification_C306
	self.companyIdentificationNumbers_C665 = companyIdentificationNumbers_C665
	self.locationDetails_C666 = locationDetails_C666
	self.locationDetails1_C666 = locationDetails1_C666
	self.identityNumber_7402 = identityNumber_7402
	self.monetaryAmount_5004 = monetaryAmount_5004

	}

func description () -> String {

	var descText = "PTK+"
		descEDISeg(&descText, items: pricingticketingInformation_C664)
		descEDISeg(&descText, items: pricetariffTypeCoded_5379)
		descEDISeg(&descText, items: productDatetime_C310)
		descEDISeg(&descText, items: companyIdentification_C306)
		descEDISeg(&descText, items: companyIdentificationNumbers_C665)
		descEDISeg(&descText, items: locationDetails_C666)
		descEDISeg(&descText, items: locationDetails1_C666)
		descEDISeg(&descText, items: identityNumber_7402)
		descEDISeg(&descText, items: monetaryAmount_5004)

	descText.endFinal()

	return descText
}

}

