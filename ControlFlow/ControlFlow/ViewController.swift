//
//  ViewController.swift
//  ControlFlow
//
//  Created by Dan Bender on 25/05/15.
//  Copyright (c) 2015 Dan Bender. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let truckSpeed = 45
        let lamboSpeed = 120
        var mySpeed:Int
        mySpeed = 80
        
        if mySpeed < 70 {
            println("keep cruising")
        } else {
            println("Slow down, police ahead")
        }
        
        println("hello world")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

