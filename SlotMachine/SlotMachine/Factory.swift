//
//  Factory.swift
//  SlotMachine
//
//  Created by Dan Bender on 23/06/15.
//  Copyright (c) 2015 Dan Bender. All rights reserved.
//

import Foundation
import UIKit

class Factory {
    class func createSlots () -> [[Slot]] {

//        slots = [[slot1, slot2, slot3], [slot4, slot5, slot6], [slot7, slot8, slot9]]

        let kNumberOfSlots = 3
        let kNumberOfContainers = 3
        var slots: [[Slot]] = []
        for var containerNumber = 0; containerNumber < kNumberOfContainers; ++containerNumber {
            var slotArray:[Slot] = []
            for var slotNumber = 0; slotNumber < kNumberOfSlots; ++slotNumber {
                var slot = Slot(value: 0, image: UIImage(named: ""), isRed: true)
                slotArray.append(slot)
            }
            slots.append(slotArray)
        }
        return slots
    }
}


