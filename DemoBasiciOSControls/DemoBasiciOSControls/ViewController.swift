//
//  ViewController.swift
//  DemoBasiciOSControls
//
//  Created by TrinhLBK on 6/21/15.
//  Copyright (c) 2015 TrinhLBK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var containerLogin: UIView!
    @IBOutlet weak var containerSurvey: UIView!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfPhone: UITextField!
    @IBOutlet weak var lbSliderValue: UILabel!
    @IBOutlet weak var sliderSurvey: UISlider!
    
    
    @IBAction func onSegmentValueChanged(sender: UISegmentedControl) {
        let selectedSegment = sender.selectedSegmentIndex
        switch selectedSegment{
        case 0:
            containerLogin.hidden = false
            containerSurvey.hidden = true
            break;
        case 1:
            containerLogin.hidden = true
            containerSurvey.hidden = false
            break;
        default:
            //Do nothing
            break;
        }
    }
    
    @IBAction func onTextFieldDoneEdit(sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func onSliderValueChanged(sender: UISlider) {
        let sliderValue = sender.value
        lbSliderValue.text = "\(sliderValue)"
    }
    
    @IBAction func onSwitchSurveyValueChanged(sender: UISwitch) {
        sliderSurvey.enabled = sender.on
    }
    
    
    @IBAction func onBtnLoginClicked(sender: UIButton) {
        let controllerLoginDialog = UIAlertController(title: "Login", message: "Do you want to log in?", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        let actionYes = UIAlertAction(title: "Yes", style: UIAlertActionStyle.Default, handler: { action in
            
            let controllerLoginSuccessDialog = UIAlertController(title: "Login", message: "Logged in successfully!", preferredStyle: UIAlertControllerStyle.Alert)
            
            let actionOk = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            controllerLoginSuccessDialog.addAction(actionOk)
            self.presentViewController(controllerLoginSuccessDialog, animated: true, completion: nil)
        })
        
        let actionNo = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Destructive, handler: nil)
        
        controllerLoginDialog.addAction(actionYes)
        controllerLoginDialog.addAction(actionNo)
        presentViewController(controllerLoginDialog, animated: true, completion: nil)
    }
    
    
    
}

