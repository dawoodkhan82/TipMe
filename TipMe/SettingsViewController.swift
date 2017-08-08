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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func savePressed(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(Double(defaultTipSlider.value), forKey: "default_tip_percentage")
    }
    
    @IBAction func defaultTipValueChanged(_ sender: Any) {
        defaultTipLabel.text = "\(Int(defaultTipSlider.value*100))%"
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
