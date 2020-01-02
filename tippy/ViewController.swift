//
//  ViewController.swift
//  tippy
//
//  Created by Ethan  Nguyen on 1/1/20.
//  Copyright © 2020 nguyenethan01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!    
   
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get Bill Amount
        
        let bill = Double(billField.text!) ?? 0
        
        //Calculate tip and total
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Update Total and Tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

