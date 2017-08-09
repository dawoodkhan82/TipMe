//
//  SettingsViewController.swift
//  TipMe
//
//  Created by Dawood Khan on 8/8/17.
//  Copyright © 2017 Dawood Khan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var defaultTipSlider: UISlider!
    @IBOutlet var defaultTipLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func savePressed(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(Double(defaultTipSlider.value), forKey: "default_tip_percentage")
    }
    
    @IBAction func defaultTipValueChanged(_ sender: Any) {
        defaultTipLabel.text = "\(Int(defaultTipSlider.value*100))%"
    }
    
}
