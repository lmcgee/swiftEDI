//
//  Segment.swift					 //
//  Created by Larry McGee on Tue Jun  7 20:06:16 2016.
//


class Segment: Composite {
    // This class contains the EDI Segment code (e.g. WAD) that is necessary for building messages from Composites
    // and renders the data into appropriate Segments
    
    func descriptionSeg() -> String {
        let textString = ""
        return textString
    }
    
    func descEDISeg (inout test: String, items: String...) {
        for item in items {
            test.appendContentsOf( "\(item):")
        }
    }
    
    func descEDISeg (inout test: String, items: [String]) {
        for item in items {
            test.appendContentsOf( "\(item):")
        }
    }
    
    func descEDISeg (inout test: String, items: Composite) {
            test.appendContentsOf(items.descriptionComp())
    }
    
    func descEDISeg (inout test: String, items: [Composite]...) {
        for item in items {
            for subItem in item {
            test.appendContentsOf(subItem.descriptionComp())
            }
       }
    }
}

