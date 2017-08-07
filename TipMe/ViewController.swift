//
//  ViewController.swift
//  TipMe
//
//  Created by Dawood Khan on 8/4/17.
//  Copyright © 2017 Dawood Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tipControl: UISegmentedControl!
    @IBOutlet var tipSlider: UISlider!
    @IBOutlet var billField: UITextField!
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipPercentageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let sliderValue = Int(tipSlider.value)
        tipPercentageLabel.text = String(sliderValue)
        let tipPercentagesArray = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentagesArray[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

}

