//
//  Composite.swift
//  SwiftEDI
//
//  Created by Larry McGee on 5/19/16.
//  Copyright © 2016 Larry McGee. All rights reserved.
//

extension String {
    mutating func enderFix() {
        var ender = self.endIndex.advancedBy(-1)
        while self[ender] == ":" {
            self.removeAtIndex(ender)
            
            ender = ender.predecessor()
        }
    }
}

class Composite {
    
    func descriptionComp() -> String {
        let textString = ""
        return textString
    }
    
    func descEDI (inout test: String, items: String...) {
        for item in items {
            test.appendContentsOf( "\(item):")
        }
    }
    
    func descEDI (inout test: String, items:[String]...) {
        for item in items {
            for subItem in item {
                test.appendContentsOf( "\(subItem):")
            }
        }
    }
}
