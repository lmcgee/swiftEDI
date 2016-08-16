//
//  C999.swift					 // RequestorIdentificationDetails
//  Created by Larry McGee on 8/11/16.
//  Copyright (c) 2016 TMG. All rights reserved.
//

class C999: Composite {			// RequestorIdentificationDetails
    
    var text_999: [String] = []
    
    
    override func descriptionComp () -> String {
        
        var descText = ""
        
        descEDI(&descText, items: text_999)
        
        descText.enderFix()
        
        return descText
    }
}