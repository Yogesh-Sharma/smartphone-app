//
//  EntrySegmentedItem.swift
//  MT_iOS
//
//  Created by CHEEBOW on 2015/06/02.
//  Copyright (c) 2015年 Six Apart, Ltd. All rights reserved.
//

import UIKit

class EntryStatusItem: BaseEntryItem {
    let list = [
        NSLocalizedString("Publish", comment: "Publish"),
        NSLocalizedString("Draft", comment: "Draft"),
        NSLocalizedString("Future", comment: "Future"),
    ]
    
    var selected = NOTSELECTED

    override init() {
        super.init()
        
        type = "status"
    }
    
    override func encodeWithCoder(aCoder: NSCoder) {
        super.encodeWithCoder(aCoder)
        aCoder.encodeInteger(self.selected, forKey: "selected")
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.selected = aDecoder.decodeIntegerForKey("selected")
    }


    override func value()-> String {
        if selected == NOTSELECTED {
            return ""
        }
        return list[selected]
    }
    
    override func dispValue()-> String {
        return self.value()
    }
    
    override func makeParams()-> [String : AnyObject] {
        var status = self.value()
        if status.isEmpty {
            status = Entry.Status.Draft.text()
        }
        return [self.id:self.value()]
    }
    
    override func clear() {
        selected = NOTSELECTED
    }
}
