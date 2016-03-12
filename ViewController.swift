//
//  ViewController.swift
//  weatherAlert
//
//  Created by Stephanie Gao on 3/6/16.
//  Copyright © 2016 Stephanie Gao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var buttonSubmit : UIButton = UIButton(frame:CGRectMake(0,0, 200, 40))
    var labelPhoneNumber : UILabel = UILabel (frame: CGRectMake(0,0,200,40))
    var labelFirstName : UILabel = UILabel (frame: CGRectMake(0,0,200,40))
    var labelLastName : UILabel = UILabel (frame: CGRectMake(0,0,200,40))
    var labelLocation : UILabel = UILabel (frame: CGRectMake(0,0,200,40))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        buttonSubmit.setTitle("Submit", forState: UIControlState.Normal)
        buttonSubmit.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        buttonSubmit.backgroundColor=UIColor.greenColor()
        buttonSubmit.addTarget(self, action: "submitData", forControlEvents: UIControlEvents.TouchUpOutside)
        buttonSubmit.setTitleColor(UIColor.grayColor(), forState: UIControlState.Highlighted)
        buttonSubmit.setTitle("I am pressed", forState: UIControlState.Highlighted)
        buttonSubmit.center=CGPointMake(160, 500)
        view.addSubview(buttonSubmit)
        
        labelPhoneNumber.text="Phone Number"
        labelPhoneNumber.textColor=UIColor.blackColor()
        labelPhoneNumber.textAlignment = NSTextAlignment.Center
        labelPhoneNumber.center=CGPointMake(160, 100)
        view.addSubview(labelPhoneNumber)
        
        
        labelFirstName.text="First Name"
        labelFirstName.textColor=UIColor.blackColor()
        labelFirstName.textAlignment = NSTextAlignment.Center
        labelFirstName.center=CGPointMake(160, 200)
        view.addSubview(labelFirstName)
        
        labelLastName.text="Last Name"
        labelLastName.textColor=UIColor.blackColor()
        labelLastName.textAlignment = NSTextAlignment.Center
        labelLastName.center=CGPointMake(160, 300)
        view.addSubview(labelLastName)
        
        labelLocation.text="City/Zip Code"
        labelLocation.textColor=UIColor.blackColor()
        labelLocation.textAlignment = NSTextAlignment.Center
        labelLocation.center=CGPointMake(160, 400)
        view.addSubview(labelLocation)



    }
    
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}

