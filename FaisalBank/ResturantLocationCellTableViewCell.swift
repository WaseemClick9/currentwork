//
//  ResturantLocationCellTableViewCell.swift
//  FaisalBank
//
//  Created by Waseem Ahmed on 25/11/2015.
//  Copyright (c) 2015 Click9. All rights reserved.
//

import UIKit

class ResturantLocationCellTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var RestrntName: UILabel!
    
    @IBOutlet weak var Upto: UILabel!

    @IBOutlet weak var Percentage: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
