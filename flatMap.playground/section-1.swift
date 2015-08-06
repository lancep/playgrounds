// Playground - noun: a place where people can play

import Foundation

class Box<T> {
    let value: T
    init(_ value: T) {
        self.value = value
    }
}

enum Result<T> {
    case Success(Box<T>)
    case Failure(String)
    
    func map<P>(f: T -> P) -> Result<P> {
        switch self {
        case Success(let value):
            let newValue = f(value.value)
            return .Success(Box(newValue))
        case Failure(let errString):
            return .Failure(errString)
        }
    }
}

extension Result {
    func flatMap<P>(f: T -> Result<P>) -> Result<P> {
        switch self {
        case .Success(let boxedValue):
            return f(boxedValue.value)
        case .Failure(let errString):
            return .Failure(errString)
        }
    }
}

func printResult<T>(result: Result<T>) {
    switch result {
    case .Success(let value):
        println(value.value)
    case .Failure(let errString):
        println(errString)
    }
}

func divide(lhs: Int, #by: Int) -> Result<Int> {
    if by == 0 {
        return .Failure("Can't divide by zero")
    } else {
        return .Success(Box(lhs/by))
    }
}

func myLog(number: Int) -> Result<Int> {
    if number >= 0 {
        return .Success(Box(Int(log(Double(number)))))
    } else {
        return .Failure("Can't compute the log of a negative number")
    }
}

func multiplyBy(x: Int)( y: Int) -> Int {
    return x * y
}

let normal = divide(10, by: 2).flatMap(myLog)
                              .map(multiplyBy(3))
printResult(normal)

let divideByZero = divide(10, by: 0).flatMap(myLog)
                                    .map(multiplyBy(3))
printResult(divideByZero)

let negativeLog = divide(100, by: -1).flatMap(myLog)
                                     .map(multiplyBy(10))
printResult(negativeLog)
