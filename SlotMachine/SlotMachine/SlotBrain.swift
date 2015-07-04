//
//  SlotBrain.swift
//  SlotMachine
//
//  Created by Dan Bender on 04/07/15.
//  Copyright (c) 2015 Dan Bender. All rights reserved.
//

import Foundation


class SlotBrain {
    
    class func unpackSlotsIntoSlotRows (slots : [[Slot]]) -> [[Slot]] {
        
        var slotRow : [Slot] = []
        var slotRow2 : [Slot] = []
        var slotRow3 : [Slot] = []
        
        for slotArray in slots {
            for var index = 0; index < slotArray.count; ++index {
                let slot = slotArray[index]
                if index == 0 {
                    slotRow.append(slot)
                }
                else if index == 1 {
                    slotRow2.append(slot)
                    
                }
                else if  index == 2 {
                    slotRow3.append(slot)
                }
                else {
                    println("Error, invalid slot")
                }
            }
        }
        
        var slotsInRows : [[Slot]] = [slotRow, slotRow2, slotRow3]
        
        return slotsInRows
    }
    
    class func computeWinnings (slots: [[Slot]]) -> Int {
        
        var slotsInRows = unpackSlotsIntoSlotRows(slots)
        var winnings = 0
        
        var flushWinCount = 0
        var threeOfAKindWinCount = 0
        var straightWinCount = 0
        
        for slotRow in slotsInRows {
            
        }
        
        return winnings
    }
    
}