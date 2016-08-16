//
//  SLD.swift					 // Special Load Details 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class SLD: Segment
{
	var handlingInstructionsCoded_4079: C000
	var quantityInformation_C351: C351
	var documentmessageNumber_1004: C000
	var undgNumber_7124: C000
	var businessDescription_4022: C000
	var packingGroupCoded_8339: C000
	var hazardIdentification_C235: C235
	var hazardCode_C205: C205


init(handlingInstructionsCoded_4079: C000,
	quantityInformation_C351: C351,
	documentmessageNumber_1004: C000,
	undgNumber_7124: C000,
	businessDescription_4022: C000,
	packingGroupCoded_8339: C000,
	hazardIdentification_C235: C235,
	hazardCode_C205: C205) {

	self.handlingInstructionsCoded_4079 = handlingInstructionsCoded_4079
	self.quantityInformation_C351 = quantityInformation_C351
	self.documentmessageNumber_1004 = documentmessageNumber_1004
	self.undgNumber_7124 = undgNumber_7124
	self.businessDescription_4022 = businessDescription_4022
	self.packingGroupCoded_8339 = packingGroupCoded_8339
	self.hazardIdentification_C235 = hazardIdentification_C235
	self.hazardCode_C205 = hazardCode_C205

	}

func description () -> String {

	var descText = "SLD+"
		descEDISeg(&descText, items: handlingInstructionsCoded_4079)
		descEDISeg(&descText, items: quantityInformation_C351)
		descEDISeg(&descText, items: documentmessageNumber_1004)
		descEDISeg(&descText, items: undgNumber_7124)
		descEDISeg(&descText, items: businessDescription_4022)
		descEDISeg(&descText, items: packingGroupCoded_8339)
		descEDISeg(&descText, items: hazardIdentification_C235)
		descEDISeg(&descText, items: hazardCode_C205)

	descText.endFinal()

	return descText
}

}

