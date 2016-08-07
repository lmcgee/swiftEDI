//
//  main.swift
//  SwiftEDI
//
//  Created by Larry McGee on 5/15/16.
//  Copyright © 2016 Larry McGee. All rights reserved.
//

import Foundation
//import "SwiftEDI-Bridging-Header.h"
print("Hello, World!")

//var myC043 = C043()

//myC043.cabinClassDesignator_9854 = "999999999"
//myC044.specialServiceRequestSsrCode_9837 = "yy"
//myC044.carrierIdentification_3127 = "zxzxzxzx"
//myC044.frequentFlyerIdentificationCode_9839 = ""
//myC044.age_9886 = ""
//myC044.numberOfPieces_6806 = ""
//myC044.weight_6803 = ""
//myC043.specificSeat_9809 = "5A"
//myC044.numericOfUnitsQualifier_6353 = ""
//myC043.freeseatingReferenceIdentifier_9861 = "XYZ"

//print("\(myC043.description())")

//myC043.specificSeat_9809 = "666666"

//print("\(myC043.description())")

//
//  Composite.swift
//  SwiftEDI
//
//  Created by Larry McGee on 5/19/16.
//  Copyright © 2016 Larry McGee. All rights reserved.
//

//import Foundation

//class Composite {
//    
//    func descEDI (inout test: String, items: String...) {
//        for item in items {
//            test.appendContentsOf( ":\(item)")
//        }
//    }
//    
//    func descEDI (inout test: String, items:[String]...) {
//        for item in items {
//            for subItem in item {
//                test.appendContentsOf( ":\(subItem)")
//            }
//        }
//        
//    }

//var myC997 = C997("referenceNumber_1154","relationshipCoded_9143","accommodationType_7904","characteristicCoded_7907",["specialRequirementData99_99601","specialRequirementData99_99602","specialRequirementData99_99603"])
//var regex = NSRegularExpression(pattern: "\\[.+?\\]"
//    , options: NSRegularExpressionOptions.CaseInsensitive
//    , error: nil)


let name = "Testnameski"
if let match = name.rangeOfString("ski$", options: .RegularExpressionSearch) {
    print("\(name) is probably polish")
} else {
    print("\(name) is probably not polish")
}

var myC997 = C997()
    myC997.referenceNumber_1154 = "21"
    myC997.relationshipCoded_9143 = "1"
    myC997.accommodationType_7904 = ""
    myC997.characteristicCoded_7907 = ""
    myC997.specialRequirementData_9960 = [""]

//print("\(myC997.descriptionComp())")
var myAAI = AAI(accommodationAllocationInformation_C997: myC997,accommodationAllocationInformation1_C997: [myC997])
print(" \n Printing the AAI Segment\(myAAI.description())")
//myAAI.description()
    var addr = ("AAI+21:1::::+21:1::::+")
    var ender = addr.endIndex.advancedBy(-2)
    while addr[ender] == ":" {
        addr.removeAtIndex(ender)
        ender = ender.predecessor()
    }
    ender = ender.successor()

    print("tried to work on ender:\(addr.endIndex)")
    print("\(addr)")