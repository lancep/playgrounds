// Playground - noun: a place where people can play

import Cocoa

func flatten<T>(array: [[T]]) -> Array<T> {
    var result = [T]()
    for subarray in array {
        result.extend(subarray)
    }
    return result
}

extension Array {
    func flatMap<U>(transform: Element -> [U]) -> [U] {
        return flatten(self.map(transform))
    }
}

let families = [["Lance", "Whitney", "Calvin"], ["Seth", "Tina", "Felicity"], ["Kerry, Pamella", "Evan", "McKenna"]]

flatten(families)

let result = families.flatMap({ $0 })
result
