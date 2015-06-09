//
//  EntryDateItem.swift
//  MT_iOS
//
//  Created by CHEEBOW on 2015/06/02.
//  Copyright (c) 2015年 Six Apart, Ltd. All rights reserved.
//

import UIKit

class EntryDateItem: BaseEntryItem {
    var date: NSDate?
    
    override init() {
        super.init()
        
        type = "date"
    }

    override func value()-> String {
        if let date = self.date {
            return Utils.dateTimeTextFromDate(date)
        }
        
        return ""
    }
    
    override func dispValue()-> String {
        if let date = self.date {
            return Utils.dateStringFromDate(date)
        }
        
        return ""
    }

    override func makeParams()-> [String : AnyObject] {
        if let dt = self.date {
            return [self.id:self.value()]
        }
        return [self.id:""]
    }
}
