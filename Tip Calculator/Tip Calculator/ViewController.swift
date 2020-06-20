//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Montana  on 6/18/20.
//  Copyright © 2020 Montana Braswell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    
    //connecting storyboard text field and label to view controller
    @IBOutlet var billTotalTextfield: UITextField!
    @IBOutlet var tipPercentageTextfield: UITextField!
    @IBOutlet var tipLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view.
        
    }
 
        //action that is pressed
    @IBAction func calculateTapped(_ sender: Any) {
        //printing out user response
        print(billTotalTextfield.text!)
        print(tipPercentageTextfield.text!)
        
        //setting these as constants as whole numbers if they exisit
        let billTotal = Double(billTotalTextfield.text!)!
        let tipPercentage = Double(tipPercentageTextfield.text!)!
        
        //calculating tip from billTotal and tipPercentage /100
        let tip = billTotal * (tipPercentage / 100)
        
        //printing out tiplabel and putting tip as an integer
        tipLabel.text = "Tip: $\(Int(tip))"
    }
    
}

