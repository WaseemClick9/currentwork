//
//  ViewController.swift
//  FaisalBank
//
//  Created by Waseem Ahmed on 24/11/2015.
//  Copyright (c) 2015 Click9. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    
    
    @IBOutlet weak var mobit: UIButton!
    
    @IBOutlet weak var NewNavigation: UINavigationItem!
    @IBOutlet weak var MenuBarbtn: UIBarButtonItem!
    @IBOutlet weak var FooterView: UIView!
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var Paging: UIPageControl!
    @IBOutlet weak var Navbar: UINavigationBar!
    
  
    let screenSize = UIScreen.mainScreen().bounds.size.width
    
    
    override func viewDidLoad() {
        
        
        mobit.hidden = true 
//        MenuBarbtn.target = self.revealViewController()
//        MenuBarbtn.action = Selector("revealToggle:")
        super.viewDidLoad()
        navigationBarImgae()
        
        ScrollView.contentSize = CGSizeMake(screenSize * 3,ScrollView.frame.height)
        self.ScrollView.delegate = self
        self.Paging.currentPage = 0
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }
    
    override func viewDidAppear(animated: Bool) {
        let viewone = faisalXipFile(frame: CGRectMake(0, 0, ScrollView.frame.width, ScrollView.frame.height))
        ScrollView.addSubview(viewone)
        
        let ViewTwo = faisalXipFile(frame: CGRectMake(ScrollView.frame.width, 0, ScrollView.frame.width, ScrollView.frame.height))
        ScrollView.addSubview(ViewTwo)
        
        let ViewThree = faisalXipFile(frame: CGRectMake(ScrollView.frame.width*2, 0, ScrollView.frame.width, ScrollView.frame.height))
        ScrollView.addSubview(ViewThree)
        
        let FooterViewone = FooterViewFile(frame: CGRectMake(0, 0,FooterView.frame.width, FooterView.frame.height))
        FooterView.addSubview(FooterViewone)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func navigationBarImgae()
    {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width:25,height:30))
        // imageView.contentMode = .ScaleAspectFit
        
        let image = UIImage(named: "logo")
        imageView.image = image
        
        imageView.contentMode = .ScaleAspectFit
        
        self.NewNavigation.titleView = imageView
        

        
        let button1: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        //set image for button
        button1.setImage(UIImage(named: "menu2"), forState: UIControlState.Normal)
        //add function for button
        button1.addTarget(revealViewController(), action:"revealToggle:", forControlEvents: UIControlEvents.TouchUpInside)
        //set frame
        button1.frame = CGRectMake(0, 5,20, 20)
        
        let barButton1 = UIBarButtonItem(customView: button1)
        //assign button to navigationbar
        self.NewNavigation.leftBarButtonItem = barButton1
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let pageWidth:CGFloat = CGRectGetWidth(ScrollView.frame)
        let currentPage:CGFloat = floor((ScrollView.contentOffset.x-pageWidth/2)/pageWidth)+1
        self.Paging.currentPage = Int(currentPage);
        
    }
   
    func moveToNextPage()
    {
        let pageWidth:CGFloat = CGRectGetWidth(self.ScrollView.frame)
        let maxWidth:CGFloat = pageWidth * 3
        let contentOffSet:CGFloat = self.ScrollView.contentOffset.x
        
        var slideToX = contentOffSet + pageWidth
        
        if  contentOffSet + pageWidth == maxWidth{
            slideToX = 0
        }
        self.ScrollView.scrollRectToVisible(CGRectMake(slideToX, 0, pageWidth, CGRectGetHeight(self.ScrollView.frame)), animated: true)
    }
    

}

