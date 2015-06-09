//
//  ViewController.swift
//  Age of Laika
//
//  Created by Dan Bender on 24/05/15.
//  Copyright (c) 2015 Dan Bender. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsTranslatedToHumanYearsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToHuman(sender: UIButton) {
        var enteredHumanYearsLabel = Double(humanYearsTextField.text.toInt()!)
        
        dogYearsTranslatedToHumanYearsLabel.hidden = false
        let puppyYearConstant = 10.5
        let dogYearsConstant = 7.0
        
        if enteredHumanYearsLabel <= 2.0 {
            dogYearsTranslatedToHumanYearsLabel.text = "\(enteredHumanYearsLabel * puppyYearConstant) Dog Years"
        } else {
             dogYearsTranslatedToHumanYearsLabel.text = "\(enteredHumanYearsLabel * dogYearsConstant) Dog Years"
        }

        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
    }

}

