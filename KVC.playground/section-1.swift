// Playground - noun: a place where people can play

import Cocoa
import Foundation

class Person : NSObject {
    var name: String
    var age: Int
    
    func getAge() -> Int {
        println("read age of \(name)")
        return age
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let people: NSArray = [Person(name: "Lance", age: 27),
    Person(name: "Whitney", age: 24),
    Person(name: "Calvin", age: 1)]

people.valueForKeyPath("@max.age")


let x: UInt64 = 100
let y = ((x + 10) - 5) / 5
let z = (x + (10 - 5)) / 5
