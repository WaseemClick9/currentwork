//
//  AccountCustomCellTableViewCell.swift
//  FaisalBank
//
//  Created by Waseem Ahmed on 25/11/2015.
//  Copyright (c) 2015 Click9. All rights reserved.
//

import UIKit

class AccountCustomCellTableViewCell: UITableViewCell {

    @IBOutlet weak var HeadingLabel: UILabel!
    
    
    @IBOutlet weak var RupesLabel: UILabel!
    
    @IBOutlet weak var AccountNumber: UILabel!
    
    @IBOutlet weak var AccountStatus: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
