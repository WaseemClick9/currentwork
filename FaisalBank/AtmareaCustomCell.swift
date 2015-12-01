//
//  AtmareaCustomCell.swift
//  FaisalBank
//
//  Created by Waseem Ahmed on 26/11/2015.
//  Copyright (c) 2015 Click9. All rights reserved.
//

import UIKit

class AtmareaCustomCell: UITableViewCell {
    
    
    @IBOutlet weak var AtmBranchName: UILabel!
    
    @IBOutlet weak var AtmBranchAddress: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
