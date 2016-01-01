//
//  SettingsViewController.swift
//  TipJar
//
//  Created by Shakeeb Majid on 12/31/15.
//  Copyright (c) 2015 Shakeeb Majid. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = NSUserDefaults.standardUserDefaults()
        
        let tipValue = defaults.doubleForKey("default_tip_percentage")
        
        defaults.setBool(false, forKey: "changed")
        
        if(tipValue == 0.18 ){
            defaultTipControl.selectedSegmentIndex = 0
        }
        
        if(tipValue == 0.20 ){
            defaultTipControl.selectedSegmentIndex = 1
            
        }
        
        if(tipValue == 0.22){
            defaultTipControl.selectedSegmentIndex = 2
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    
    
    

    @IBAction func defaultControl(sender: AnyObject) {
        var tipPercentages = [0.18, 0.20, 0.22]
        var tipPercentage = tipPercentages[defaultTipControl.selectedSegmentIndex]
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(tipPercentage, forKey: "default_tip_percentage")
        defaults.setBool(true, forKey: "changed")
        defaults.synchronize()
    }


}
