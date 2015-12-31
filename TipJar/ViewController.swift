//
//  ViewController.swift
//  TipJar
//
//  Created by Shakeeb Majid on 12/28/15.
//  Copyright (c) 2015 Shakeeb Majid. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        billField.becomeFirstResponder()
        let defaults = NSUserDefaults.standardUserDefaults()
        let tipValue = defaults.doubleForKey("default_tip_percentage")
        
        var billAmount = billField.text._bridgeToObjectiveC().doubleValue
        var tip = billAmount * tipValue
        var total = billAmount + tip
        
        
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
        if(tipValue == 0.18){
            tipControl.selectedSegmentIndex = 0
        }
        
        if(tipValue == 0.20 ){
            tipControl.selectedSegmentIndex = 1
            
        }
        
        if(tipValue == 0.22){
            tipControl.selectedSegmentIndex = 2
            
        }
        
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let tipValue = defaults.doubleForKey("default_tip_percentage")
        
        let changeValue = defaults.boolForKey("changed")
        
        if(changeValue){
            var billAmount = billField.text._bridgeToObjectiveC().doubleValue
            var tip = billAmount * tipValue
            var total = billAmount + tip
            
            
            
            tipLabel.text = "$\(tip)"
            totalLabel.text = "$\(total)"
            tipLabel.text = String(format: "$%.2f", tip)
            totalLabel.text = String(format: "$%.2f", total)
            
            
            if(tipValue == 0.18){
                tipControl.selectedSegmentIndex = 0
            }
            
            if(tipValue == 0.20 ){
                tipControl.selectedSegmentIndex = 1
                
            }
            
            if(tipValue == 0.22){
                tipControl.selectedSegmentIndex = 2
                
            }

            
        }
        

    }
    
    
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.20, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        
        
        var billAmount = billField.text._bridgeToObjectiveC().doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
    /*@IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }*/


}

