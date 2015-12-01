//
//  MobitLoginViewController.swift
//  FaisalBank
//
//  Created by Waseem Ahmed on 24/11/2015.
//  Copyright (c) 2015 Click9. All rights reserved.
//

import UIKit

class MobitLoginViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var Table: UITableView!
    
    @IBOutlet weak var NavBar: UINavigationBar!
    
    @IBOutlet weak var HeaderView: UIView!
    
    @IBOutlet weak var FooterView: UIView!
    
    
    var detail = ["MY Account","Bill Payment","Prepaid Topup","Inter Bank Fund Transfer","Fund Transfer","Credit Card Payment"]
   
     var Accountimage = [UIImage(named: "user.png") , UIImage(named: "bill.png") , UIImage(named: "mobile.png"),UIImage(named: "interBank.png"), UIImage(named: "fundTransfer.png"), UIImage(named: "card.png")]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        navigationBarImgae()

        let FooterViewadd = FooterViewFile(frame: CGRectMake(0, 0, FooterView.frame.width, FooterView.frame.height))
        FooterView.addSubview(FooterViewadd)
        
        self.Table.estimatedRowHeight = 60
        self.Table.rowHeight = UITableViewAutomaticDimension
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return detail.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:MobitCustomCellTableViewCell! = self.Table.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as? MobitCustomCellTableViewCell
     
        cell.AccountImage.image = Accountimage[indexPath.row]
        cell.DetailLabel.text = detail[indexPath.row]
        
        return cell
        
}
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        var i = indexPath.row
//    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if let cell = sender as? UITableViewCell
//        {
//            let i = Table.indexPathForCell(cell)?.row
//            
//            if cell.detailTextLabel?.text == detail[0]
//            {
//            
//             self.performSegueWithIdentifier("account", sender: nil)
//        
//            }
////        if segue.identifier == "account"{
////        
////        let vc = segue.destinationViewController as mobitAccoutViewController
////
////            
////
//        
//            
//        else if cell.detailTextLabel?.text == detail[1]{
//            
//             self.performSegueWithIdentifier("bill", sender: nil)
////            let naviagationController = segue.destinationViewController as mobitBillViewController
//        }
//        }
//    }
    
        
        
    
    func navigationBarImgae()
    {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width:10,height: 20))
        // imageView.contentMode = .ScaleAspectFit
        
        let image = UIImage(named: "logo")
        imageView.image = image
        
        imageView.contentMode = .ScaleAspectFit
        
        self.NavBar.topItem?.titleView = imageView
        
        
        let button: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        //set image for button
        button.setImage(UIImage(named: "back"), forState: UIControlState.Normal)
        //add function for button
        button.addTarget(self, action:"BackToView", forControlEvents: UIControlEvents.TouchUpInside)
        //set frame
        button.frame = CGRectMake(0, 5,20, 20)
        
        let barButton = UIBarButtonItem(customView: button)
        //assign button to navigationbar
        self.NavBar.topItem?.leftBarButtonItem = barButton
        
        
        let button1: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        //set image for button
        button1.setImage(UIImage(named: "menu"), forState: UIControlState.Normal)
        //add function for button
        button1.addTarget(self, action:nil, forControlEvents: UIControlEvents.TouchUpInside)
        //set frame
        button1.frame = CGRectMake(0, 5,20, 20)
        
        let barButton1 = UIBarButtonItem(customView: button1)
        //assign button to navigationbar
        self.NavBar.topItem?.rightBarButtonItem = barButton1
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func BackToView()
    {
        self.dismissViewControllerAnimated(true ,completion:nil)
        
    }


}
