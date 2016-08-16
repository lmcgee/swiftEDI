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

        while !self.isEmpty && self[ender] == ":" //&& self[ender.successor()] == "+"
            {
                self.removeAtIndex(ender)
                if ender > self.startIndex {
                ender = ender.predecessor()
                } else {
                // new test code added 08/15/16
                self.insert("+", atIndex: self.endIndex)
                }
            }
        self.insert("+", atIndex: self.endIndex)
        
    }
}

extension String {
    mutating func endFinal() {
        while self[self.endIndex.predecessor()] == "+"  {
            self.removeAtIndex(self.endIndex.predecessor())
            self.endIndex.predecessor()
        }
        self.insert("'", atIndex: self.endIndex)
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
