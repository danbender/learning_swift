//
//  ViewController.swift
//  tip_calculator
//
//  Created by Dan Bender on 17/02/16.
//  Copyright © 2016 Dan Bender. All rights reserved.
//

import UIKit

class tipCalculator {
    var currentTip: String = ""
    
}
class ViewController: UIViewController {

    @IBOutlet weak var userValueInputTextField: UITextField!
    
    @IBOutlet weak var tipPercentage: UILabel!
    @IBOutlet weak var tipValue: UILabel!
    
    @IBOutlet weak var totalAmount: UILabel!
    
    @IBOutlet weak var tipPercentageSlider: UISlider!
    
    var chosenTipValue : Int = 0
    var currentSubtotal : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getCurrentSubtotal()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tipPercentageSliderAction(sender: UISlider) {
        chosenTipValue = Int(sender.value)
        
        tipPercentage.text = "Tip (\(tipValue)%):"
        tipPercentage.sizeToFit()
    }
    
    func getCurrentSubtotal () {
        currentSubtotal = userValueInputTextField.text!
        print(currentSubtotal)
        resignFirstResponder()
    }


}

