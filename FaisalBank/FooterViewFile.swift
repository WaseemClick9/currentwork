//
//  FooterViewFile.swift
//  FaisalBank
//
//  Created by Waseem Ahmed on 24/11/2015.
//  Copyright (c) 2015 Click9. All rights reserved.
//

import UIKit

@IBDesignable class FooterViewFile: UIView {

    var view:UIView!
    
    
    override init(frame: CGRect) {
        super.init(frame : frame)
        setup()
    }
    
    
    required init(coder aDecoder:NSCoder) {
        super.init(coder : aDecoder)
        setup()
    }
    
    
    func setup()
    {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        addSubview(view)
    }
    
    
    func loadViewFromNib() -> UIView{
        
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "footerView", bundle: bundle)
        
        let view = nib.instantiateWithOwner(self, options: nil)[0] as UIView
        
        return view
        
    }


}
