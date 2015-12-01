//
//  FirstMencCutomcellTableViewCell.swift
//  FaisalBank
//
//  Created by Waseem Ahmed on 28/11/2015.
//  Copyright (c) 2015 Click9. All rights reserved.
//

import UIKit

class FirstMencCutomcellTableViewCell: UITableViewCell {

    @IBOutlet weak var IconImg: UIImageView!
    @IBOutlet weak var NAme: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        IconImg.image = IconImg.image?.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        IconImg.tintColor = UIColor.blackColor()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
