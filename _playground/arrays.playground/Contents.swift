//: Playground - noun: a place where people can play

import UIKit

//var tigerNames:Array
//var tigerNames:[String]

var tigerNames = ["Tigger", "Tigress", "Jacob", "Spar"]
var tigerAges = [3, 2 , 4, 5]
var emptyArray:[String] = []

let firstNameFromArray = tigerNames[0]
var theCountOfMyTigerNamesArray = tigerNames.count
var theCountOfMyEmptyArray = emptyArray.count

if emptyArray.isEmpty {
    println("there are no elements in my array")
}
else {
    println("there are elements in this array")
}

println("\(tigerNames.count)")

// Iterating over array:

//for var i = 0; i < tigerNames.count; i++ {
//    let instanceFromArray = tigerNames[i]
//    println(instanceFromArray)
//}

//for tigerName in tigerNames {
//    let tigerNameFromArray = tigerName
//    println("tigerName: \(tigerName)")
//}


//for tigerAge in 1...3 {
//    println("\(tigerAge)")
//}


// For in Enumerate Loop
for (index, tigerName) in enumerate(tigerNames) {
    println("index: \(index) tigerName: \(tigerName)")
}