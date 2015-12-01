//
//  discountcloseCellTableViewCell.swift
//  FaisalBank
//
//  Created by Waseem Ahmed on 27/11/2015.
//  Copyright (c) 2015 Click9. All rights reserved.
//

import UIKit

class discountcloseCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var UptoLabel: UILabel!
    @IBOutlet weak var PercentLabel: UILabel!
    @IBOutlet weak var TimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
