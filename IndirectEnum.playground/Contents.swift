//: Playground - noun: a place where people can play

import Cocoa

indirect enum MyEnum {
    case RecursiveCase(MyEnum?, Int)
}

func printEnum(root: MyEnum) {
    var current: MyEnum? = root
    
    while let c = current  {
        switch c {
        case .RecursiveCase(let next, let value):
            print(value)
            current = next
        }
    }
}

var leaf = MyEnum.RecursiveCase(nil, 2)
var root = MyEnum.RecursiveCase(leaf, 1)

printEnum(root)
