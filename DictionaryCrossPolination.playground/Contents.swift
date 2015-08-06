//: Playground - noun: a place where people can play

import Cocoa

let ages = ["Lance" : 28, "Whitney" : 26]
var people: [String:Int] = [:]

let keys = ["Lance", "Whitney", "Calvin"]
for key in keys {
    people[key] = ages[key]
}

people
