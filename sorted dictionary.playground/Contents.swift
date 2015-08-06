//: Playground - noun: a place where people can play

import Cocoa

let dict: [String:Int] = ["apple":5, "pear":9, "grape":1]

let sortedDict = dict.sort {
    return $0.1 > $1.1
}.map {
    $0.1
}



sortedDict
