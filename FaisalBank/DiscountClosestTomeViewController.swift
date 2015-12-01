//
//  DiscountClosestTomeViewController.swift
//  FaisalBank
//
//  Created by Waseem Ahmed on 27/11/2015.
//  Copyright (c) 2015 Click9. All rights reserved.
//

import UIKit

class DiscountClosestTomeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var HeaderView: UIView!
    @IBOutlet weak var NavigationBar: UINavigationBar!
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var FooterView: UIView!
    
    var ResturntName = ["Noorani KataKat","Sajjad Restaurant","Kolachi","Foresters House of Grill"]
    var Percentage = ["15%","20%","5%","10%"]
    var upto = ["UPTO","UPTO","UPTO","UPTO"]
    var mi = ["45 mi","20 mi","60 mi","35 mi"]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBarImgae()
        let FooterViewadd = FooterViewFile(frame: CGRectMake(0, 0, FooterView.frame.width, FooterView.frame.height))
        FooterView.addSubview(FooterViewadd)
        
        self.TableView.estimatedRowHeight = 60
        self.TableView.rowHeight = UITableViewAutomaticDimension
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return ResturntName.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:discountcloseCellTableViewCell! = self.TableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as? discountcloseCellTableViewCell
        
        cell.PercentLabel.text = Percentage[indexPath.row]
        cell.NameLabel.text = ResturntName[indexPath.row]
        cell.UptoLabel.text = upto[indexPath.row]
        cell.TimeLabel.text = mi[indexPath.row]
        
        return cell
        
    }
    
    func navigationBarImgae()
    {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width:30,height: 30))
        // imageView.contentMode = .ScaleAspectFit
        
        let image = UIImage(named: "logo")
        imageView.image = image
        
        imageView.contentMode = .ScaleAspectFit
        
        self.NavigationBar.topItem?.titleView = imageView
        
        
        let button: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        //set image for button
        button.setImage(UIImage(named: "back"), forState: UIControlState.Normal)
        //add function for button
        button.addTarget(self, action:"BackToView", forControlEvents: UIControlEvents.TouchUpInside)
        //set frame
        button.frame = CGRectMake(0, 5,20, 20)
        
        let barButton = UIBarButtonItem(customView: button)
        //assign button to navigationbar
        self.NavigationBar.topItem?.leftBarButtonItem = barButton
        
        
        let button1: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        //set image for button
        button1.setImage(UIImage(named: "menu"), forState: UIControlState.Normal)
        //add function for button
        button1.addTarget(self, action:nil, forControlEvents: UIControlEvents.TouchUpInside)
        //set frame
        button1.frame = CGRectMake(0, 5,20, 20)
        
        let barButton1 = UIBarButtonItem(customView: button1)
        //assign button to navigationbar
        self.NavigationBar.topItem?.rightBarButtonItem = barButton1
        // Do any additional setup after loading the view, typically from a nib.
    }
    func BackToView()
    {
        self.dismissViewControllerAnimated(true ,completion:nil)
        
    }


}
