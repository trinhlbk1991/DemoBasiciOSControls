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
    
    @IBAction func onBtnLoginClicked(sender: UIButton) {
        
    }

}

