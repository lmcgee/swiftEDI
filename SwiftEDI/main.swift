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

var my1C997 = C997()
    my1C997.referenceNumber_1154 = "21"
    my1C997.relationshipCoded_9143 = "1"
    my1C997.accommodationType_7904 = ""
    my1C997.characteristicCoded_7907 = ""
    my1C997.specialRequirementData_9960 = [""]

var myC337 = C337()
    myC337.sectorSubjectIdentificationQualifier_7293 = ["AAA","BBB","CCC"]
var myC300 = C300()
    myC300.travelAgentIdentificationDetails_9900 = "ZQQQZ"
    myC300.inHouseIdentification_9902 = ["www","xxx","yyy"]
var myC328 = C328()
    myC328.placeLocation_3224 = "3224"
    myC328.placeLocationIdentification_3225 = "3225"
var my1C000 = C000()
    my1C000.text_0000 = "3207"
var my2C000 = C000()
    my2C000.text_0000 = ""


var myABI = ABI(sourceType_C337: myC337, originatorIdentificationDetails_C300: myC300, location_C328: myC328 , countryCoded_3207: my1C000, companyIdentification_9906: my2C000)
print("\n \(myABI.description())")
print("PRINT C997:\(myC997.descriptionComp())")
var myAAI = AAI(accommodationAllocationInformation_C997: myC997,accommodationAllocationInformation1_C997: [myC997,my1C997])
print(" \n Printing the AAI Segment\(myAAI.description())")
//myAAI.description()
    var addr = ("AAI+21:1::::+21:1::::+")
    var ender = addr.endIndex.advancedBy(-2)
    while addr[ender] == ":" {
        addr.removeAtIndex(ender)
        ender = ender.predecessor()
    }

// Mark: Build a TVL ======================================================================================
//var tVL = TVL()
var tVLC310 = C310()
    tVLC310.firstDate_9916 = "1111"         // date format is
    tVLC310.firstTime_9918 = "2222"         // time format is
    tVLC310.secondDate_9920 = "3333"
    tVLC310.secondTime_9922 = "44414"
    tVLC310.dateVariation_9954 = "5"     // plus/minus and number
var tVLC328 = C328()
    tVLC328.placeLocation_3224 = "3224"
    tVLC328.placeLocationIdentification_3225 = "3225"
var tVL1C328 = C328()
    tVL1C328.placeLocation_3224  =   "3224"
    tVL1C328.placeLocationIdentification_3225 = "3225"
var tVLC306 = C306()
    tVLC306.companyIdentification_9906 = ["AAA","BBB"]
var tVLC308 = C308()
    tVLC308.characteristicIdentification_7037 = "XXX"
    tVLC308.itemDescriptionIdentification_7009 = ["111","222"]
    tVLC308.productIdentification_9908 = "ZZZ"
    tVLC308.productIdentificationCharacteristic_9914 = "fill"
var tVLC309 = C309()
    tVLC309.sequenceNumber_1050 = ["1050","1050"]
var tVL1C000 = C000()
    tVL1C000.text_0000 = "1082"
var tVL2C000 = C000()
    tVL2C000.text_0000 = ""

var tVL1082 = "1082"
var tVL7365 = "SS"
var tVLC311 = C311()
    tVLC311.companyIdentification_9906 = "CCC"
    tVLC311.groupNumber_9995            = "DDD"
    tVLC311.lineItemNumber_1082         = "EEEE"
    tVLC311.relationCoded_5479          = "FFF"
    tVLC311.relationCoded1_5479         = ""

var myTVL = TVL(productDatetime_C310: tVLC310, location_C328: tVLC328, location1_C328: tVL1C328, companyIdentification_C306: tVLC306, productIdentificationDetails_C308: tVLC308, productTypeDetails_C309: tVLC309, lineItemNumber_1082: tVL1C000, processingIndicatorCoded_7365: tVL2C000, marriageControlDetails_C311: [tVLC311])
    print("\n TVL test:\(myTVL.description())")
//    ender = ender.successor()

//    print("tried to work on ender:\(addr.endIndex)")
//    print("\(addr)")