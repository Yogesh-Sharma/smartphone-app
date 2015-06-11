//
//  Page.swift
//  MT_iOS
//
//  Created by CHEEBOW on 2015/05/22.
//  Copyright (c) 2015年 Six Apart, Ltd. All rights reserved.
//

import UIKit
import SwiftyJSON

class Page: BaseEntry {
    var folders = [Folder]()
    
    override init(json: JSON) {
        super.init(json: json)
        
        folders.removeAll(keepCapacity: false)
        for item in json["folders"].arrayValue {
            let folder = Folder(json: item)
            folders.append(folder)
        }
    }
    
    override func encodeWithCoder(aCoder: NSCoder) {
        super.encodeWithCoder(aCoder)
        aCoder.encodeObject(self.folders, forKey: "folders")
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.folders = aDecoder.decodeObjectForKey("folders") as! [Folder]
    }

}
