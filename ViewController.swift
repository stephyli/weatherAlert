
//

//
//  ViewController.swift
//  WeatherAlert
//
//  Created by Scott Kong on 3/20/16.
//  Copyright (c) 2016 Scott Kong. All rights reserved.
//

//

import UIKit

class ViewController: UIViewController {
    var buttonSubmit : UIButton = UIButton(frame:CGRectMake(0,0, 200, 40))
    var labelPhoneNumber : UILabel = UILabel (frame: CGRectMake(0,0,200,40))
    var labelFirstName : UILabel = UILabel (frame: CGRectMake(0,0,200,40))
    var labelLastName : UILabel = UILabel (frame: CGRectMake(0,0,200,40))
    var labelLocation : UILabel = UILabel (frame: CGRectMake(0,0,200,40))
    var textBoxPhoneNumber: UITextField = UITextField(frame: CGRectMake(0,0,200,40))
    var textBoxFirstName: UITextField = UITextField(frame: CGRectMake(0,0,200,40))
    var textBoxLastName: UITextField = UITextField(frame: CGRectMake(0,0,200,40))
    var textBoxLocation: UITextField = UITextField(frame: CGRectMake(0,0,200,40))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        labelPhoneNumber.text="Phone Number"
        labelPhoneNumber.textColor=UIColor.blackColor()
        labelPhoneNumber.textAlignment = NSTextAlignment.Center
        labelPhoneNumber.center=CGPointMake(160, 100)
        view.addSubview(labelPhoneNumber)
        
        textBoxPhoneNumber.backgroundColor=UIColor.whiteColor()
        textBoxPhoneNumber.textColor = UIColor.blackColor()
        textBoxPhoneNumber.textAlignment = NSTextAlignment.Left
        textBoxPhoneNumber.layer.borderColor = UIColor.blackColor().CGColor
        textBoxPhoneNumber.layer.borderWidth=1
        //textBoxPhoneNumber.layer.masksToBounds=true
        textBoxPhoneNumber.center=CGPointMake(160, 150)
        view.addSubview(textBoxPhoneNumber)
        
        labelFirstName.text="First Name"
        labelFirstName.textColor=UIColor.blackColor()
        labelFirstName.textAlignment = NSTextAlignment.Center
        labelFirstName.center=CGPointMake(160, 200)
        view.addSubview(labelFirstName)
        
        textBoxFirstName.backgroundColor=UIColor.whiteColor()
        textBoxFirstName.textColor = UIColor.blackColor()
        textBoxFirstName.textAlignment = NSTextAlignment.Left
        textBoxFirstName.layer.borderColor = UIColor.blackColor().CGColor
        textBoxFirstName.layer.borderWidth=1
        //textBoxFirstName.layer.masksToBounds=true
        textBoxFirstName.center=CGPointMake(160, 250)
        view.addSubview(textBoxFirstName)
        
        labelLastName.text="Last Name"
        labelLastName.textColor=UIColor.blackColor()
        labelLastName.textAlignment = NSTextAlignment.Center
        labelLastName.center=CGPointMake(160, 300)
        view.addSubview(labelLastName)
        
        textBoxLastName.backgroundColor=UIColor.whiteColor()
        textBoxLastName.textColor = UIColor.blackColor()
        textBoxLastName.textAlignment = NSTextAlignment.Left
        textBoxLastName.layer.borderColor = UIColor.blackColor().CGColor
        textBoxLastName.layer.borderWidth=1
        //textBoxLastName.layer.masksToBounds=true
        textBoxLastName.center=CGPointMake(160, 350)
        view.addSubview(textBoxLastName)
        
        labelLocation.text="City/Zip Code"
        labelLocation.textColor=UIColor.blackColor()
        labelLocation.textAlignment = NSTextAlignment.Center
        labelLocation.center=CGPointMake(160, 400)
        view.addSubview(labelLocation)
        
        textBoxLocation.backgroundColor=UIColor.whiteColor()
        textBoxLocation.textColor = UIColor.blackColor()
        textBoxLocation.textAlignment = NSTextAlignment.Left
        textBoxLocation.layer.borderColor = UIColor.blackColor().CGColor
        textBoxLocation.layer.borderWidth=1
        //textBoxLocation.layer.masksToBounds=true
        textBoxLocation.center=CGPointMake(160, 450)
        view.addSubview(textBoxLocation)
        
        buttonSubmit.setTitle("Submit", forState: UIControlState.Normal)
        buttonSubmit.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        buttonSubmit.backgroundColor=UIColor.greenColor()
        
        buttonSubmit.addTarget(self, action: "submitData:", forControlEvents: UIControlEvents.TouchUpInside)
        buttonSubmit.setTitleColor(UIColor.grayColor(), forState: UIControlState.Highlighted)
        //buttonSubmit.setTitle("I am pressed", forState: UIControlState.Highlighted)
        buttonSubmit.center=CGPointMake(160, 550)
        view.addSubview(buttonSubmit)
        
        
        
        
    }
    
    @IBAction func buttonTapped(sender: AnyObject) {
        let alertController = UIAlertController(title: "iOScreator", message:
            "Hello, world!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    func submitData(sender:UIButton)
    {
        let tag = sender.titleLabel?.textColor
        print(tag)
        validation()
        //print(textBoxFirstName.text)
        
    }
    
    
    func validation()
    {
        // if(textBoxPhoneNumber.text.isEmpty)=false && )
        print(NSNumberFormatter().numberFromString(textBoxPhoneNumber.text!))
        let lenPhoneNumber : NSString = textBoxPhoneNumber.text!
        print(lenPhoneNumber.length)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}



