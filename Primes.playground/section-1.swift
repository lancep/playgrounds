// Playground - noun: a place where people can play

import Foundation

let n = 30

var primes = Array(count:n+1, repeatedValue:true)

let squareRootOfN = Int(sqrt(Double(n)))
for i in 2...squareRootOfN {
    if primes[i] {
        let iSquared = Int(powf(Float(i), 2))
        var x = 0
        for var j = iSquared; j <= n; j = iSquared + x * i {
            primes[j] = false
            x++
        }
    }
}

var index = 0

for result in primes {
    if result && index > 0 {
        println("\(index) is prime")
    }
    index++
}
