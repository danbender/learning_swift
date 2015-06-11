//
//  LionCub.swift
//  LionsAndTigers
//
//  Created by Dan Bender on 11/06/15.
//  Copyright (c) 2015 Dan Bender. All rights reserved.
//

import Foundation
import UIKit

class LionCub: Lion {
    func rubLionCubsBelly () {
        println("LionCub: Snuggle and be happy")
    }
    
    override func roar () {
//        go to superclass and do whatever it tells you to do there
//        and implement the stuff that i add here as well.
        super.roar()
        println("LionCub: Growl Growl")
    }
}