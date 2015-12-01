//
//  mobitAccoutViewController.swift
//  FaisalBank
//
//  Created by Waseem Ahmed on 25/11/2015.
//  Copyright (c) 2015 Click9. All rights reserved.
//

import UIKit

class mobitAccoutViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var FooterView: UIView!
    @IBOutlet weak var Navgationbar: UINavigationBar!

    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var HeaderView: UIView!
    
    
    var Headinglist = ["MY Account","Saving Account","Credit Card","BTF","Car Loans"]
    
  var AccountStatus = ["Current Account","Faysal Anchor Saving Account","Credit Card","Account","Account"]
    var AccountNumber = ["01100060044274","01100060044274","01100060044274","01100060044274","01100060044274"]
    
    var AccountRupes = ["Rs. 10,000,000.00","Rs. 375,000.00","Rs. 125,000.00","Rs. 700,000.00","Rs. 120,000.00"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBarImgae()
        TableView.separatorColor = UIColor.grayColor()
        
        let FooterViewadd = FooterViewFile(frame: CGRectMake(0, 0, FooterView.frame.width, FooterView.frame.height))
        FooterView.addSubview(FooterViewadd)
        
        self.TableView.estimatedRowHeight = 80
        self.TableView.rowHeight = UITableViewAutomaticDimension
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return Headinglist.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:AccountCustomCellTableViewCell! = self.TableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as? AccountCustomCellTableViewCell
        
      
        cell.HeadingLabel.text = Headinglist[indexPath.row]
        cell.AccountStatus.text = AccountStatus[indexPath.row]
        cell.AccountNumber.text = AccountNumber[indexPath.row]
        cell.RupesLabel.text = AccountRupes[indexPath.row]
        
        return cell
        
    }
    

    func navigationBarImgae()
    {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width:40,height: 40))
        // imageView.contentMode = .ScaleAspectFit
        
        let image = UIImage(named: "logo")
        imageView.image = image
        
        imageView.contentMode = .ScaleAspectFit
        
        self.Navgationbar.topItem?.titleView = imageView
        
        
        let button: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        //set image for button
        button.setImage(UIImage(named: "back"), forState: UIControlState.Normal)
        //add function for button
        button.addTarget(self, action:"BackToView", forControlEvents: UIControlEvents.TouchUpInside)
        //set frame
        button.frame = CGRectMake(0, 5,20, 20)
        
        let barButton = UIBarButtonItem(customView: button)
        //assign button to navigationbar
        self.Navgationbar.topItem?.leftBarButtonItem = barButton
        
        
        let button1: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        //set image for button
        button1.setImage(UIImage(named: "menu"), forState: UIControlState.Normal)
        //add function for button
        button1.addTarget(self, action:nil, forControlEvents: UIControlEvents.TouchUpInside)
        //set frame
        button1.frame = CGRectMake(0, 5,20, 20)
        
        let barButton1 = UIBarButtonItem(customView: button1)
        //assign button to navigationbar
        self.Navgationbar.topItem?.rightBarButtonItem = barButton1
        // Do any additional setup after loading the view, typically from a nib.
    }
    func BackToView()
    {
        self.dismissViewControllerAnimated(true ,completion:nil)
        
    }

}
