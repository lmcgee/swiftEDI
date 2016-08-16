//
//  SSD.swift					 // Seat Selection Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class SSD: Segment
{
	var specificSeatDetails_C679: C679
	var noSmokingIndicator_9807: C000
	var seatCharacteristicDetails_C680: C680
	var seatRangeDetails_C681: C681
	var cabinClassDesignator_9854: C000
	var cabinClassOfServiceCoded_9873: C000
	var freeText_4440: C000
	var placelocationIdentification_3225: C000
	var placelocationIdentification1_3225: C000
	var processingIndicatorCoded_7365: C000
	var securityIdentificationDetails_C682: C682
	var processingIndicatorCoded1_7365: C000
	var specificSeatPurpose_C683: [C683]


init(specificSeatDetails_C679: C679,
	noSmokingIndicator_9807: C000,
	seatCharacteristicDetails_C680: C680,
	seatRangeDetails_C681: C681,
	cabinClassDesignator_9854: C000,
	cabinClassOfServiceCoded_9873: C000,
	freeText_4440: C000,
	placelocationIdentification_3225: C000,
	placelocationIdentification1_3225: C000,
	processingIndicatorCoded_7365: C000,
	securityIdentificationDetails_C682: C682,
	processingIndicatorCoded1_7365: C000,
	specificSeatPurpose_C683: [C683] = []) {

	self.specificSeatDetails_C679 = specificSeatDetails_C679
	self.noSmokingIndicator_9807 = noSmokingIndicator_9807
	self.seatCharacteristicDetails_C680 = seatCharacteristicDetails_C680
	self.seatRangeDetails_C681 = seatRangeDetails_C681
	self.cabinClassDesignator_9854 = cabinClassDesignator_9854
	self.cabinClassOfServiceCoded_9873 = cabinClassOfServiceCoded_9873
	self.freeText_4440 = freeText_4440
	self.placelocationIdentification_3225 = placelocationIdentification_3225
	self.placelocationIdentification1_3225 = placelocationIdentification1_3225
	self.processingIndicatorCoded_7365 = processingIndicatorCoded_7365
	self.securityIdentificationDetails_C682 = securityIdentificationDetails_C682
	self.processingIndicatorCoded1_7365 = processingIndicatorCoded1_7365
	self.specificSeatPurpose_C683 = specificSeatPurpose_C683

	}

func description () -> String {

	var descText = "SSD+"
		descEDISeg(&descText, items: specificSeatDetails_C679)
		descEDISeg(&descText, items: noSmokingIndicator_9807)
		descEDISeg(&descText, items: seatCharacteristicDetails_C680)
		descEDISeg(&descText, items: seatRangeDetails_C681)
		descEDISeg(&descText, items: cabinClassDesignator_9854)
		descEDISeg(&descText, items: cabinClassOfServiceCoded_9873)
		descEDISeg(&descText, items: freeText_4440)
		descEDISeg(&descText, items: placelocationIdentification_3225)
		descEDISeg(&descText, items: placelocationIdentification1_3225)
		descEDISeg(&descText, items: processingIndicatorCoded_7365)
		descEDISeg(&descText, items: securityIdentificationDetails_C682)
		descEDISeg(&descText, items: processingIndicatorCoded1_7365)
		descEDISeg(&descText, items: specificSeatPurpose_C683)

	descText.endFinal()

	return descText
}

}

