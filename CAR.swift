//
//  CAR.swift					 // Commercial Agreements 
//  Created by Larry McGee on Mon Aug 15 19:59:16 2016.
//  Copyright (c) 2016 TMG. All rights reserved.
//


class CAR: Segment
{
	var companyRoleIdentification_C374: C374
	var companyRoleIdentification1_C374: [C374]


init(companyRoleIdentification_C374: C374,
	companyRoleIdentification1_C374: [C374] = []) {

	self.companyRoleIdentification_C374 = companyRoleIdentification_C374
	self.companyRoleIdentification1_C374 = companyRoleIdentification1_C374

	}

func description () -> String {

	var descText = "CAR+"
		descEDISeg(&descText, items: companyRoleIdentification_C374)
		descEDISeg(&descText, items: companyRoleIdentification1_C374)

	descText.endFinal()

	return descText
}

}

