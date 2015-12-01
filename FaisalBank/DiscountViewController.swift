//
//  DiscountViewController.swift
//  FaisalBank
//
//  Created by Waseem Ahmed on 24/11/2015.
//  Copyright (c) 2015 Click9. All rights reserved.
//

import UIKit

class DiscountViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var NavigationBar: UINavigationItem!
    
    @IBOutlet weak var FooterView: UIView!
    //@IBOutlet weak var navBar: UINavigationBar!
    
    @IBOutlet weak var table: UITableView!
    
    
    var detail = ["Find Closest to me","Restaurants","lifestyle","Clothings","Clothings"]
    
    var Accountimage = [UIImage(named: "pin.png") , UIImage(named: "restuarant.png") , UIImage(named: "cardstar.png"),UIImage(named: "dress.png"), UIImage(named: "restuarant.png")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBarImgae()
        
        
        //navBar.hidden = true
        
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        

     
        self.table.estimatedRowHeight = 60
        self.table.rowHeight = UITableViewAutomaticDimension
        
        
        let FooterViewadd = FooterViewFile(frame: CGRectMake(0, 0, FooterView.frame.width, FooterView.frame.height))
        FooterView.addSubview(FooterViewadd)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return detail.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:discountTableViewCell! = self.table.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as? discountTableViewCell
        
        cell.LogoImg.image = Accountimage[indexPath.row]
        cell.MainDetail.text = detail[indexPath.row]
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       self.table.deselectRowAtIndexPath(indexPath, animated: true)
    
        
//        switch indexPath.row
//        {
//        
//        case 0 :
//             self.performSegueWithIdentifier("closetome", sender: self)
//      
//            break
//        
//        default:
//               self.performSegueWithIdentifier("restaurant", sender: self)
//            break
//        }
    }

    func navigationBarImgae()
    {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width:25,height: 30))
        // imageView.contentMode = .ScaleAspectFit
        
        let image = UIImage(named: "logo")
        imageView.image = image
        
        imageView.contentMode = .ScaleAspectFit
        
        self.NavigationBar.titleView = imageView
        
        
        let button: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        //set image for button
        button.setImage(UIImage(named: "back"), forState: UIControlState.Normal)
        //add function for button
        button.addTarget(self, action:"BackToView", forControlEvents: UIControlEvents.TouchUpInside)
        //set frame
        button.frame = CGRectMake(0, 5,20, 20)
        
        let barButton = UIBarButtonItem(customView: button)
        //assign button to navigationbar
        self.NavigationBar.leftBarButtonItem = barButton
        
        
        let button1: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        //set image for button
        button1.setImage(UIImage(named: "menu2"), forState: UIControlState.Normal)
        //add function for button
        button1.addTarget(self, action:nil, forControlEvents: UIControlEvents.TouchUpInside)
        //set frame
        button1.frame = CGRectMake(0, 5,20, 20)
        
        let barButton1 = UIBarButtonItem(customView: button1)
        //assign button to navigationbar
        self.NavigationBar.rightBarButtonItem = barButton1

    }
  
    func BackToView()
    {
        self.dismissViewControllerAnimated(true ,completion:nil)
        
    }


}
