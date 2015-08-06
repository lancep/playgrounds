// Playground - noun: a place where people can play

var foo: Int? = 100

let bar = foo.map { $0 * 10 }

bar

foo = nil

let baz = foo.map { $0 + 50 }

baz

