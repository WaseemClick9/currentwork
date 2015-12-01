//
//  AtmLocatorDirectionViewController.swift
//  FaisalBank
//
//  Created by Waseem Ahmed on 28/11/2015.
//  Copyright (c) 2015 Click9. All rights reserved.
//

import UIKit
import MapKit

class AtmLocatorDirectionViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var map: MKMapView!
    
    @IBOutlet weak var NavgationBar: UINavigationBar!
    @IBOutlet weak var branchName: UILabel!
    @IBOutlet weak var Map: MKMapView!
    @IBOutlet weak var getAddress: UILabel!
    @IBOutlet weak var GetPhone: UILabel!
    @IBOutlet weak var Button: UIButton!

    @IBOutlet weak var FooterView: UIView!
    
    
    let initialLocation = CLLocation(latitude: 24.9158449, longitude:67.033478)
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Button.layer.cornerRadius = 2
        navigationBarImgae()
        
         let FooterViewadd = FooterViewFile(frame: CGRectMake(0, 0, FooterView.frame.width, FooterView.frame.height))
        FooterView.addSubview(FooterViewadd)

centerMapOnLocation(initialLocation)
        // Do any additional setup after loading the view.
    }
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        map.setRegion(coordinateRegion, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func navigationBarImgae()
    {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width:10,height: 20))
        // imageView.contentMode = .ScaleAspectFit
        
        let image = UIImage(named: "logo")
        imageView.image = image
        
        imageView.contentMode = .ScaleAspectFit
        
        self.NavgationBar.topItem?.titleView = imageView
        
        
        let button: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        //set image for button
        button.setImage(UIImage(named: "back"), forState: UIControlState.Normal)
        //add function for button
        button.addTarget(self, action:"BackToView", forControlEvents: UIControlEvents.TouchUpInside)
        //set frame
        button.frame = CGRectMake(0, 5,20, 20)
        
        let barButton = UIBarButtonItem(customView: button)
        //assign button to navigationbar
        self.NavgationBar.topItem?.leftBarButtonItem = barButton
        
        
        let button1: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        //set image for button
        button1.setImage(UIImage(named: "menu"), forState: UIControlState.Normal)
        //add function for button
        button1.addTarget(self, action:nil, forControlEvents: UIControlEvents.TouchUpInside)
        //set frame
        button1.frame = CGRectMake(0, 5,20, 20)
        
        let barButton1 = UIBarButtonItem(customView: button1)
        //assign button to navigationbar
        self.NavgationBar.topItem?.rightBarButtonItem = barButton1
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func BackToView()
    {
        self.dismissViewControllerAnimated(true ,completion:nil)
        
    }

    
    @IBAction func DirectionBtn(sender: AnyObject) {
    }

   
}
