//
//  ViewController.swift
//  TipMe
//
//  Created by Dawood Khan on 8/4/17.
//  Copyright © 2017 Dawood Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var tipSlider: UISlider!
    @IBOutlet var billField: UITextField!
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipPercentageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billField.delegate = self
        billField.becomeFirstResponder()
        billField.addDoneButtonToKeyboard(myAction:  #selector(self.billField.resignFirstResponder))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let possibleDefaultTipPercent = UserDefaults.standard.string(forKey: "default_tip_percentage")
        if let defaultTipPercent = possibleDefaultTipPercent {
            let dtp = Float(defaultTipPercent)!
            tipSlider?.setValue(dtp, animated: true)
            tipPercentageLabel.text = "\(Int(dtp * 100))%"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentage = round(100*tipSlider.value) / 100
        tipPercentageLabel.text = "\(Int(tipPercentage*100))%"
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * Double(tipPercentage)
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

extension UITextField{
    
    func addDoneButtonToKeyboard(myAction:Selector?){
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 300, height: 40))
        doneToolbar.barStyle = UIBarStyle.blackTranslucent
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.done, target: self, action: myAction)
        
        var items = [UIBarButtonItem]()
        items.append(flexSpace)
        items.append(done)
        
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
    }
}



