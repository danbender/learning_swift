//: Playground - noun: a place where people can play

import UIKit

var tigerNames = ["Tigger", "Tigress"]
tigerNames.append("Jacob")
println(tigerNames)

tigerNames += ["hello", "ciao"]

tigerNames[1] = "replacement"
println(tigerNames)

tigerNames[0...2] = ["test", "test1", "test2"]
println(tigerNames)

tigerNames.removeLast()
println(tigerNames)


