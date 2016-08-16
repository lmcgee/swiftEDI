//
//  TBI.swift					 // Traveller Booking Information 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class TBI: Segment
{
	var classInformation_C687: C687
	var reservationControlInformation_C330: [C330]
	var alphaReferenceIdentification_9752: C000
	var numericReferenceIdentification_9753: C000


init(classInformation_C687: C687,
	reservationControlInformation_C330: [C330] = [],
	alphaReferenceIdentification_9752: C000,
	numericReferenceIdentification_9753: C000) {

	self.classInformation_C687 = classInformation_C687
	self.reservationControlInformation_C330 = reservationControlInformation_C330
	self.alphaReferenceIdentification_9752 = alphaReferenceIdentification_9752
	self.numericReferenceIdentification_9753 = numericReferenceIdentification_9753

	}

func description () -> String {

	var descText = "TBI+"
		descEDISeg(&descText, items: classInformation_C687)
		descEDISeg(&descText, items: reservationControlInformation_C330)
		descEDISeg(&descText, items: alphaReferenceIdentification_9752)
		descEDISeg(&descText, items: numericReferenceIdentification_9753)

	descText.endFinal()

	return descText
}

}

