//
//  C360.swift					 // EquipmentIdentification
//  Created by Larry McGee on 5/14/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C360: Composite {			// EquipmentIdentification

	var typeOfMeansOfTransportIdentification_8179: String  = "" 
	var productIdentificationCharacteristic_9914: String = "" 
	var idOfTheMeansOfTransport_8212: String = "" 
	var equipmentIdentificationNumber_8260: String = "" 


	override func descriptionComp () -> String {

		var descText = ""

		descEDI(&descText, items: typeOfMeansOfTransportIdentification_8179,
			productIdentificationCharacteristic_9914,
			idOfTheMeansOfTransport_8212,
			equipmentIdentificationNumber_8260)

		descText.enderFix()

	return descText
	}
}