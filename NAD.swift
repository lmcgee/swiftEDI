//
//  NAD.swift					 // Name And Address 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class NAD: Segment
{
	var partyQualifier_3035: C000
	var partyIdentificationDetails_C082: C082
	var nameAndAddress_C058UN: C058UN
	var partyName_C080: C080
	var street_C059UN: C059UN
	var cityName_3164: C000
	var countrySubentityIdentification_3229: C000
	var postcodeIdentification_3251: C000
	var countryCoded_3207: C000


init(partyQualifier_3035: C000,
	partyIdentificationDetails_C082: C082,
	nameAndAddress_C058UN: C058UN,
	partyName_C080: C080,
	street_C059UN: C059UN,
	cityName_3164: C000,
	countrySubentityIdentification_3229: C000,
	postcodeIdentification_3251: C000,
	countryCoded_3207: C000) {

	self.partyQualifier_3035 = partyQualifier_3035
	self.partyIdentificationDetails_C082 = partyIdentificationDetails_C082
	self.nameAndAddress_C058UN = nameAndAddress_C058UN
	self.partyName_C080 = partyName_C080
	self.street_C059UN = street_C059UN
	self.cityName_3164 = cityName_3164
	self.countrySubentityIdentification_3229 = countrySubentityIdentification_3229
	self.postcodeIdentification_3251 = postcodeIdentification_3251
	self.countryCoded_3207 = countryCoded_3207

	}

func description () -> String {

	var descText = "NAD+"
		descEDISeg(&descText, items: partyQualifier_3035)
		descEDISeg(&descText, items: partyIdentificationDetails_C082)
		descEDISeg(&descText, items: nameAndAddress_C058UN)
		descEDISeg(&descText, items: partyName_C080)
		descEDISeg(&descText, items: street_C059UN)
		descEDISeg(&descText, items: cityName_3164)
		descEDISeg(&descText, items: countrySubentityIdentification_3229)
		descEDISeg(&descText, items: postcodeIdentification_3251)
		descEDISeg(&descText, items: countryCoded_3207)

	descText.endFinal()

	return descText
}

}

