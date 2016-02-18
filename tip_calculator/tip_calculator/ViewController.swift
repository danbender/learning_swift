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
    var userSubtotalInput : Int = 0
    var tipAmount : Double = 0.0
    let currencyFormatter = NSNumberFormatter()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let textField = userValueInputTextField
//        textField.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
//        currencyFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
//        currencyFormatter.currencyCode = NSLocale.currentLocale().displayNameForKey(NSLocaleCurrencySymbol, value: NSLocaleCurrencyCode)
        
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
        userSubtotalInput = Int(userValueInputTextField.text!)!
    }
    

    
    
//    MARK - helper functions
    
    
    func calculateTipAmount () {
        tipAmount = (Double(userSubtotalInput)/100) * Double(chosentipValue)
        tipValue.text = "\(tipAmount)"
    }
    
    func calculateTotalAmount () {
        totalAmount.text = "$ \(Double(tipAmount) + Double(userSubtotalInput))"
    }
    
    
    
//    func textFieldDidChange(textField: UITextField) {
//        var text = textField.text!.stringByReplacingOccurrencesOfString(currencyFormatter.currencySymbol, withString: "").stringByReplacingOccurrencesOfString(currencyFormatter.groupingSeparator, withString: "").stringByReplacingOccurrencesOfString(currencyFormatter.decimalSeparator, withString: "")
//        textField.text = currencyFormatter.stringFromNumber((text as NSString).doubleValue / 100.0)
//    }
//    
//    
//    func currencyStringAsDouble(currencyString: String) -> Double {
//        let cleanedString = currencyString.stringByReplacingOccurrencesOfString(currencyFormatter.currencySymbol, withString: "").stringByReplacingOccurrencesOfString(currencyFormatter.groupingSeparator, withString: "").stringByReplacingOccurrencesOfString(currencyFormatter.decimalSeparator, withString: "")
//        let currencyDouble = (text as NSString).doubleValue / 100.0
//        return currencyDouble;
//    }


}


// get
//  subtotal + tipamount = total
//         subtotal * tipercentage = tip amount
