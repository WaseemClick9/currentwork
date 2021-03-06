
//
//  RestaurantMapViewController.swift
//  FaisalBank
//
//  Created by Waseem Ahmed on 26/11/2015.
//  Copyright (c) 2015 Click9. All rights reserved.
//

import UIKit
import MapKit

class RestaurantMapViewController: UIViewController {
    
    @IBOutlet weak var NavigationBAr: UINavigationBar!
    
    
    @IBOutlet weak var HeaderView: UIView!
    
    @IBOutlet weak var MapView: MKMapView!
    
    @IBOutlet weak var FooterView: UIView!
    
    @IBOutlet weak var RestaurantName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBarImgae()
        let FooterViewadd = FooterViewFile(frame: CGRectMake(0, 0, FooterView.frame.width, FooterView.frame.height))
        FooterView.addSubview(FooterViewadd)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func navigationBarImgae()
    {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width:30,height: 30))
        // imageView.contentMode = .ScaleAspectFit
        
        let image = UIImage(named: "logo")
        imageView.image = image
        
        imageView.contentMode = .ScaleAspectFit
        
        self.NavigationBAr.topItem?.titleView = imageView
        
        
        let button: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        //set image for button
        button.setImage(UIImage(named: "back"), forState: UIControlState.Normal)
        //add function for button
        button.addTarget(self, action:"BackToView", forControlEvents: UIControlEvents.TouchUpInside)
        //set frame
        button.frame = CGRectMake(0, 5,20, 20)
        
        let barButton = UIBarButtonItem(customView: button)
        //assign button to navigationbar
        self.NavigationBAr.topItem?.leftBarButtonItem = barButton
        
        
        let button1: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        //set image for button
        button1.setImage(UIImage(named: "menu"), forState: UIControlState.Normal)
        //add function for button
        button1.addTarget(self, action:nil, forControlEvents: UIControlEvents.TouchUpInside)
        //set frame
        button1.frame = CGRectMake(0, 5,20, 20)
        
        let barButton1 = UIBarButtonItem(customView: button1)
        //assign button to navigationbar
        self.NavigationBAr.topItem?.rightBarButtonItem = barButton1
        // Do any additional setup after loading the view, typically from a nib.
    }
    func BackToView()
    {
        self.dismissViewControllerAnimated(true ,completion:nil)
        
    }



}
