//
//  EntryImageTableViewCell.swift
//  MT_iOS
//
//  Created by CHEEBOW on 2015/06/04.
//  Copyright (c) 2015年 Six Apart, Ltd. All rights reserved.
//

import UIKit

class EntryImageTableViewCell: UITableViewCell {
    @IBOutlet weak var assetImageView: UIImageView!
    @IBOutlet weak var placeholderLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
