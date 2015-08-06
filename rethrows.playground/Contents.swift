//: Playground - noun: a place where people can play

import Cocoa

enum Error : ErrorType {
    case AnError
}

func throwsFunc(closure: () throws -> ()) throws {
    
}

func safeFunc(closer: () -> ()) {
    
}

func rethrowsFunc(closure: () throws -> ()) rethrows {
    
}


let iDontThrow = {
    print("I don't throw")
}

let iThrow: () throws -> () = {
    print("I throw")
    throw Error.AnError
}

safeFunc(iDontThrow)
//safeFunc(iThrow) //error

try throwsFunc(iDontThrow)
try throwsFunc(iThrow)

rethrowsFunc(iDontThrow)
try rethrowsFunc(iThrow)
