//
//  MobitCustomCellTableViewCell.swift
//  FaisalBank
//
//  Created by Waseem Ahmed on 24/11/2015.
//  Copyright (c) 2015 Click9. All rights reserved.
//

import UIKit

class MobitCustomCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var AccountImage: UIImageView!
    
    @IBOutlet weak var NextImage: UIImageView!
    
    
    @IBOutlet weak var DetailLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
