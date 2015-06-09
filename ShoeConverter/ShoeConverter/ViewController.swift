//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Dan Bender on 24/05/15.
//  Copyright (c) 2015 Dan Bender. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        let conversionConstant = 32
        mensConvertedShoeSizeLabel.hidden = false
        
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant) in European shoe size."

        mensShoeSizeTextField.text = ""
        mensShoeSizeTextField.resignFirstResponder()
        
    }
    
    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        let conversionConstant = 32.0
        womensConvertedShoeSizeLabel.hidden = false
        
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant) in European Shoe Size"
        
        womensShoeSizeTextField.text = ""
        womensShoeSizeTextField.resignFirstResponder()
        
    }
}

