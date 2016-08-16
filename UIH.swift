//
//  UIH.swift					 // Interactive Message Header (Or Unh) 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class UIH: Segment
{
	var interactiveMessageIdentifier_S306: S306
	var interactiveMessageReferenceNumber_0340: C000
	var dialogueReference_S302: S302
	var statusOfTransferInteractive_S301: S301
	var dateAndorTimeOfInitiation_S300: S300
	var testIndicator_0035: C000


init(interactiveMessageIdentifier_S306: S306,
	interactiveMessageReferenceNumber_0340: C000,
	dialogueReference_S302: S302,
	statusOfTransferInteractive_S301: S301,
	dateAndorTimeOfInitiation_S300: S300,
	testIndicator_0035: C000) {

	self.interactiveMessageIdentifier_S306 = interactiveMessageIdentifier_S306
	self.interactiveMessageReferenceNumber_0340 = interactiveMessageReferenceNumber_0340
	self.dialogueReference_S302 = dialogueReference_S302
	self.statusOfTransferInteractive_S301 = statusOfTransferInteractive_S301
	self.dateAndorTimeOfInitiation_S300 = dateAndorTimeOfInitiation_S300
	self.testIndicator_0035 = testIndicator_0035

	}

func description () -> String {

	var descText = "UIH+"
		descEDISeg(&descText, items: interactiveMessageIdentifier_S306)
		descEDISeg(&descText, items: interactiveMessageReferenceNumber_0340)
		descEDISeg(&descText, items: dialogueReference_S302)
		descEDISeg(&descText, items: statusOfTransferInteractive_S301)
		descEDISeg(&descText, items: dateAndorTimeOfInitiation_S300)
		descEDISeg(&descText, items: testIndicator_0035)

	descText.endFinal()

	return descText
}

}

