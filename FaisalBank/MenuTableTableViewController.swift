//
//  MenuTableTableViewController.swift
//  FaisalBank
//
//  Created by Waseem Ahmed on 28/11/2015.
//  Copyright (c) 2015 Click9. All rights reserved.
//

import UIKit

class MenuTableTableViewController: UITableViewController {

    var tableArray = [String]()
    
  
    var IconImage = [UIImage(named:"Mobiticon"),UIImage(named:"DiscountIcon"),UIImage(named:"AtmIcon"),UIImage(named:"branchIcon"),UIImage(named:"landLine")]
    override func viewDidLoad() {
        
        self.tableView.separatorColor = UIColor.clearColor()
        tableArray = ["mobit Login","Discount","ATM Locator","Branch Locator","Contact Us"]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:FirstMencCutomcellTableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as FirstMencCutomcellTableViewCell

        cell.NAme.text = tableArray[indexPath.row]
        cell.IconImg.image = IconImage[indexPath.row]
       // cell.IconImg.image = cell.IconImg.image?.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        //cell.IconImg.tintColor = UIColor.blackColor()
        
        return cell
    }

    
}
