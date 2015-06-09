//: Playground - noun: a place where people can play

import UIKit

func printHelloWorld () {
    println("Hello World!")
    println("Hello Class")
}
printHelloWorld()

func printNumberSupplied(number : Int) {
    println("The number is \(number)")
    println("The number times 3 is \(number * 3)")
    var numberTimesTwo = number * 2
    numberTimesTwo *= 2
}

//printNumberSupplied(3)

func turnOffAppliance (applianceName: String, isOn: Bool) {
    if isOn {
        println("Please turn off the \(applianceName).")
    }
    else {
        println("I actually turned the \(applianceName) off already.")
    }
}

//turnOffAppliance("Toaster", true)

func additionFunction (firstArgument: Int, secondArgument: Int) -> Int {
    
    let sumOfArguments = firstArgument + secondArgument
    
    return sumOfArguments
}

var additionAnswerOfInteger = additionFunction(2, 4)
let finalAnswer = additionFunction(additionAnswerOfInteger, 5)
println(finalAnswer)



func helloWorldString () -> String {
    printHelloWorld ()
    
    return "hello World"
}
var helloWorld = helloWorldString()

helloWorld = helloWorld + "!!"
println(helloWorld)



































