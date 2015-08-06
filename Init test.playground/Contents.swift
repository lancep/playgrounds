//: Playground - noun: a place where people can play

import Cocoa

//class Dog {
//    let name: String
//    let age: Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    
//    convenience init(name: String) {
//        self.init(name: name, age: 0)
//    }
//    
//    convenience init(age: Int) {
//        self.init(name: "Ruff", age: age)
//    }
//    
//    convenience init() {
//        self.init(name: "Ruff", age: 0)
//    }
//}

class Dog {
    let name: String
    let age: Int
    
    init(name: String = "Ruff", age: Int = 0) {
        self.name = name
        self.age = age
    }
}

let ruff1 = Dog()
let ruff2 = Dog(age: 0)
let ruff3 = Dog(name: "Ruff")
let ruff4 = Dog(name: "Ruff", age: 0)
