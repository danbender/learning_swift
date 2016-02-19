//
//  ViewController.swift
//  tip_calculator
//
//  Created by Dan Bender on 17/02/16.
//  Copyright © 2016 Dan Bender. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userValueInputTextField: UITextField!
    @IBOutlet weak var tipPercentage: UILabel!
    @IBOutlet weak var tipValue: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    
    var chosentipValue : Int = 0
    var userSubtotalInput : Double = 0.0
    var tipAmount : Double = 0.0
    var totalCalcAmount : Double = 0.0
    
    let formatter = NSNumberFormatter()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tipPercentageSliderAction(sender: UISlider) {
        chosentipValue = Int(sender.value)
        tipPercentage.text = "Tip (\(chosentipValue)%):"
        
        calculateTipAmount()
        calculateTotalAmount()
    }
    
    @IBAction func TipMeButtonTapped(sender: AnyObject) {
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle

        userSubtotalInput = NSString(string: userValueInputTextField.text!).doubleValue
        userValueInputTextField.text = formatter.stringFromNumber(userSubtotalInput)
        
    }
    
    
//    MARK - helper functions
    
    func calculateTipAmount () {
        tipAmount = (Double(userSubtotalInput)/100) * Double(chosentipValue)
        
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        let tipAmountString = formatter.stringFromNumber(tipAmount)!
        tipValue.text = "\(tipAmountString)"
    }
    
    func calculateTotalAmount () {
        totalCalcAmount = Double(tipAmount) + Double(userSubtotalInput)
        
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        let totalAmountString = formatter.stringFromNumber(totalCalcAmount)!
        totalAmount.text = "\(totalAmountString)"
    }
    

}