    
class Segment: Composite {
    // This class takes an EDI Segment (e.g. WAD) which contains String variables and Composites (e.g. C044)
    // and renders the data into appropriate
    
//    var regex = NSRegularExpression(pattern: "\\[.+?\\]"
//        , options: NSRegularExpressionOptions.CaseInsensitive
//        , error: nil)

    func descriptionSeg() -> String {
        let textString = ""
        return textString
    }
    
    func descEDISeg (inout test: String, items: String...) {
        for item in items {
            test.appendContentsOf( ":\(item)")
        }
    }
    
    func descEDISeg (inout test: String, items: [String]) {
        for item in items {
            test.appendContentsOf( ":\(item)")
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

