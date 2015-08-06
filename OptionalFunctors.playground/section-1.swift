// Playground - noun: a place where people can play
extension Optional {
//    func flatMap<U>(f: T -> Optional<U>) -> Optional<U> {
//        switch self {
//        case .None:
//            return nil
//        case let .Some(value):
//            return f(value)
//        }
//    }
    
    // Much simpler version using the postfix ? operator (aka join)
    func flatMap<U>(f: T -> Optional<U>) -> Optional<U> {
        return self.map(f)?
    }
}

func add(x: Int)(y: Int) -> Int {
    return x + y
}

func divide(x: Int)(y: Int) -> Int? {
    if y == 0 {
        return nil
    } else {
        return y / x
    }
}

let add5 = add(5)

let tweetCount: Int? = 100

tweetCount.map(add5)

let divideBy5 = divide(5)

tweetCount.flatMap(divideBy5)

