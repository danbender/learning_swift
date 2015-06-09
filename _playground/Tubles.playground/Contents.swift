//: Playground - noun: a place where people can play

import UIKit

// tuple is a type of grouping, e.g. strings and numbers 

var myTuple = ("Tigger", "Bengal", 3)
let name = myTuple.0

var secondTigerTuple = (name: "Tigress", breed: "Indochinese Tiger",  age: 2)

let age = secondTigerTuple.age


// switch statements in tuples

switch secondTigerTuple {
case ("Tigress", "Malayan", 2):
        println("first case is true")
case (_, "Indochinese Tiger", _):
//    _ basically equals ignore
    println("second case is true")
default:
    println("Default is occuring.")
}