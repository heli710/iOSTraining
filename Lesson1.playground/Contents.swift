//: Playground - noun: a place where people can play

import UIKit

// ================= Variables, type, String, Operators ======================

let constant = 10
var number = 10

// constant = 11  -> complie error
number = 11

var myStr: String?

myStr = "Hello"

func optional () {
    // unwrapping
    //if let
    if let str = myStr {
        print("unwarpping string usinh if let " + str)
    }
    
    //guard let
    guard let str = myStr else {return}
    print("unwarpping string usinh guard let " + str)
    
    // use ! & ?
    
    print(myStr) // if myStr is not nil, it will print: Optional("Hello")
    print("force unwrapping string" + myStr!) //force uwrapping, ensure myStr is not nill if less it will crash
    
}

//============ Structural condition, structural loop in swift ===========

func waysUsingLoop() {
    for i in 1...5 {
        print(i)
    }

    for i in 1..<5 {
        print(i)
    }
    // loop by stride
    for i in stride(from: 2, to: 10, by: 3) {
        print(i)
    }

    var seasons = ["Spring","Summer","Autumn","Winter"]

    // loop in array
    for season in seasons {
        print(season)
    }
    // loop from an index
    for season in seasons[1...] {
        print(season)
    }
    
    // loop to an index
    for season in seasons[...2] {
        print(season)
    }
    
    for season in seasons[..<2] {
        print(season)
    }
}

// ============= Declare array/ dictionary/ set =================

func collection() {
    let arr = ["John","Peter","David","John"]
    
    var set = Set<String> ()
    set.insert("John")
    set.insert("David")
    set.insert("John")
    
    
    print("number of element in aray: \(arr.count)") // 3
    print("number of element in set: \(set.count)") // 2
    
    let dict = ["John" : 20,"Peter": 25, "David" : 24]
    
    for (name,age) in dict {
        print("\(name) is \(age)")
    }
}

// ====================== Closure ================================

var sayHello = { (name: String) in
    print("Hello" + name)
}

//call
sayHello("John")



//========================= Enum =============================
enum Position {
    case manager
    case staff
}

var myPosition = Position.staff
switch myPosition {
case .manager:
    print("Manager")
case .staff:
    print("Staff")
}

// ================== Inheritance in swift ======================

class ParentClass {
    func doSomething() {
        print("In parent class")
    }
}

class ChildClass: ParentClass  {
    override func doSomething() {
        print("In child class")
    }
    func myFunc() {
        // ....
    }
}
// ==================== Extension ===================

extension ParentClass {
    func sayHello() {
        print("Say hello in extension of parent class")
    }
}

let myClass = ParentClass()
myClass.sayHello()

// ================= Protocol ========================

protocol Run {
    func legs()
}

class Dog: Run {
    func legs() {
        print("Dogs run by four legs")
    }
}

class Duck: Run {
    func legs() {
        print("Ducks run by two legs")
    }
    
}
