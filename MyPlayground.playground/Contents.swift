//: Playground - noun: a place where people can play

import UIKit
//
//let firstName = "Sir "
//let lastName = "Lancelot"
//let hero = firstName + lastName
//print(hero)
//
//
//var level = 1
//level++
//print(hero)
//print(" reached level ")
//print(level)
//
//
//level = 5
//print(level)
//
//var monsterDict = [ Int : String ] ()
//monsterDict[0] = "nessy"
//monsterDict[1] = "zombie"
//print(monsterDict)
//
//monsterDict = [ 0: "nessy", 1 : "zombie", 2 : "darth vader", 3 : "lous van ghaal", 4 : "Endgegner", 5 : "Superendgegner" ]
//
//if let currentMonster = monsterDict[level] {
//    print("Hero vs. " + currentMonster)
//}
//
//
//let testString = "asadf afdaf sfdsf"
//let cnt = count(testString)
//print("\(cnt) character(s)")
//
//
//if testString.isEmpty {
//    print("it's empty")
//} else {
//    print("not empty")
//}
//
//var str1 = ""
//var str2 = String()
//
//let x = 16
//let string = "x is \(x)"
//
//let z = 4
//let y = 2
//let rst = "result = \(z + y)"
//
//var str = "Swifty"
//str.extend(" is awesome")
//print(str)
//
//
//
//let array1 = ["a", "b", "c"]
//let link = "/\\"
//let stringy = link.join(array1)
//
//
//let stringster = "Mrs. Lovelace"
//if stringster.hasSuffix("lace") {
//    print("biyaaatch.")
//} else if str.hasPrefix("Mr") {
//    print("whud up, dawg?")
//} else {
//    print("nope.")
//}
//
//
//let a = "immutable"
//var b = "mutable"
//b += "!"
//
//let c = a + " " + b
//
//
//print("hello, your name is \(hero) and your curent level is \(level)")
//
//
//var myVar = 0
//print(myVar)
//for index in 1 ... 4 {
//    myVar += index
//    print("+\(index)")
//}

//print("=\(myVar)")



// Fibonacci


//
//var first = 1
//var second = 1
//print("\(first)\(second)")
//
//// 1 2 3 5 8 13 21
//
//for n in 1 ... 10 {
//    var next = first + second
//    print(next)
//
//    first = second
//    second = next
//}
//
//
//
//

//let array = [ 1,2,3,4,5 ]
//
//for element in array {
//    print("=>\(element)")
//}

//let dict = [ 1 : "a", 2 : "b", 3 : "c" ]
//for (key,value) in dict {
//    print( "\(key) : \(value)" )
//}
////
//
//var counter = 0
//while counter <= 10 {
//    print(counter)
//    counter++
//}

//var counter = 5
//do {
// print(counter)
// counter++
//} while counter < 5


//var y = 1
//for x in 1 ... 5 {
//    while y < 4 {
//        print(y)
//        y++
//    }
//    print(x)
//}
//
//var x = 0
//while x < 3 {
//    print(x)
//    x++
//}
//do {
//  print(x)
//x++
//} while x < 3

//
//let firstName = "Sir"
//let lastName = "Lancelot"
//var hero = firstName + " " + lastName
//
//let attack = 3
//var enemyHealth = 8
//
//print("\(hero) attacks: enemy has \(enemyHealth) lives.")
//
//while enemyHealth > 0 {
//    enemyHealth -= attack
//    print("attacks again: enemy has \(enemyHealth) lives")
//}
//
//if enemyHealth <= 0 {
//    print("\(hero) has won!")
//}
//
//


//let lost = [4,8,15,16,23,42]
//for mystery in lost {
//    print("\(mystery) ")
//}
//
//var x = 0
//while x < 5 {
//    x++
//    print(x)
//}

//func hello(name: String) {
//    print("hello \(name)!")
//}
//
//let name = "Dan"
//
//hello(name)
//
//func hey(a: String, b: String) {
//    let s = "hello \(a) and \(b)"
//    print(s)
//}
//
//hey("jim", "tom")


//func double(nr: Int) -> Int {
//    let result = nr * 2
//    return result
//}
//
//let doubled = double(13)
//print("doubled = \(doubled)")

//func sum(numbers: Int...) {
//    var sum = 0
//    for number in numbers {
//        sum += number
//    }
//    print(sum)
//}
//sum(1, 4, 9, 27)

//func go(steps: Int) {
//    var moved = 0
//    fun addSteps(steps: Int) {
//        moved += steps
//    }
//    
//    addSteps(steps)
//    print("Moved: \(moved)")
//}
//
//go( 4 )
//

 

//func fourthPower(x: Int ) -> Int {
//    return x * x * x * x
//}
//func f(x: Int) -> (Int, Int, Int) {
//    return(x, x + 1, x + 2)
//}
//
//fourthPower(2)

//f(2)

//
//
//var hero = "Sir Lancelot"
//var health = 10
//let maxHealth = 12
//
//func drinkPotion(value: Int) {
//    health += value
//    if health > maxHealth {
//        health = maxHealth
//    }
//    print("Yummy!")
//}
//
//drinkPotion(1)

//
//func reverse(s: String)->String {
//    var rst = ""
//    for char in s {
//        rst = "\(char)" + rst
//    }
//    return rst
//}
//
//let output = reverse("Mike")
//print(output)
//
//
//
//class Human {
//    var name: String
//    var age: Int
//    
//    init(name:String, age:Int) {
//        self.name = name
//        self.age = age
//    }
//}
//
//var h = Human(name:"Dan", age:28)

//
//class Car {
//    var engineStarted = false
//    func startEngine() {
//        print("brrrewr")
//        engineStarted = true
//    }
//}
//
//var myCar =  Car()
//myCar.startEngine()
//
////
//
//var hero = "Sir Lancelot"
//
//class Hero {
//    var name: String
//    var level = 3
//    var attackValue = 10
//    var health: Int
//    
//    init(name: String) {
//        self.name = name
//    }
//
//}
//
//
//
//struct Coord {
//    let x = 0
//    let y = 0
//}
//
//let c1 = Coord()
//let c2 = Coord(x: 1, y: 1)
//
//print("\(c1.x) vs. \(c2.x)")


//var discount = 0.3
//var priceOfShoes = 33
//
//var priceAfterDiscount = Double(priceOfShoes) * (1.0 - discount)
//print(priceAfterDiscount)
//

//var doubleString = "1.234254532"
//var doubleValueFromString = Double((doubleString as NSString).doubleValue)
//
//
//var intValue = 5
//var doubleValue = 0.5
//
//var sumOfValues = Double(intValue) + doubleValue
//

//
//var intValue = 5
//var doubleValue = 0.9
//
//var sumOfValues = intValue + Int(doubleValue)


//var meditationHours = 1
//for meditationHours; meditationHours < 100; meditationHours += 1 {
//    println("I am getting more enlightened")
//}


//for var meditationHours = 1; meditationHours < 100; meditationHours++ {
//    println("I am getting more enlightened")
//    println(meditationHours)
//}


// Limitations of for loops, Integer runs out of space:

//var wheat = 1
//for var i = 0; i < 64; i++ {
//    wheat = wheat * 2
//    println("\(i) and \(wheat)")
//}


//for var i = 99; i > 0; i-- {
//    
//    if i == 0 {
//        println("No bottles of soda on the wall")
//    } else if i == 1 {
//        println("Only \(i) bottle of soda on the wall")
//    } else {
//        println("\(i) bottles of soda on the wall")
//    } 
//        
//}

//for var bottlesOfSoda = 99; bottlesOfSoda >= 0; --bottlesOfSoda {
//    if bottlesOfSoda == 0 {
//        println("No more bottles of soda on the wall")
//    } else {
//        println("\(bottlesOfSoda) bottles of soda on the wall")
//    }
//}



































































