//
//  ViewController.swift
//  TipCalculator
//
//  Created by Tima on 2018-05-31.
//  Copyright © 2018 Tima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }


    @IBAction func onEditingChanged(_ sender: AnyObject) {
        
        let tipPercentages = [0.15, 0.18, 0.20]
        let billAmount = NSString(string:billField.text!).doubleValue
        let tipPercent = tipPercentages[tipControl.selectedSegmentIndex]
        let tip = billAmount * tipPercent
        let total = billAmount + tip
        
        tipLabel.text = "\(tip)"
        totalLabel.text = "\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
}
    
    


