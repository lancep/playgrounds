//: Playground - noun: a place where people can play

import Cocoa

var str = "café"

for unit in str.utf8 {
    print(unit)
}

for unit in str.utf16 {
    print(unit)
}

for scalar in str.unicodeScalars {
    print(scalar)
}
