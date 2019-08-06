//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

// 2^2 = 2 * 2 = 4
// 2^3 = 2 * 2 * 2 = 8

//func power(_ value: Int, _ exponent: Int) -> Int {
//    var result: Int = 1
//
//    for _ in 0..<exponent {
//        result *= value
//    }
//    return result
//}

func power<Number: Numeric>(_ value: Number, _ exponent: Int) -> Number {
    var result: Number = 1
    
    for _ in 0..<exponent {
        result *= value
    }
    return result
}


// What values can I test?
// 2^4 = 16
let a = power(2, 4)
// 2^1 = 2
let b = power(2, 1)
// 2^1 = 1
let c = power(2, 0)

let d = power(3.5, 3)


var x = 2

//x.power(4)
// names.sort()   // sort the array in-place
// names.sorted() // return a sorted array

// x.raisedToPower(4)
// x.toThe(4)

extension Numeric {
    mutating func raiseTo(_ exponent: Int) {
        var result: Self = 1
        
        for _ in 0..<exponent {
            result *= self  // = 1 * 2
            print("self: \(self)")
        }
        self = result
    }
    
    func raisedTo(_ exponent: Int) -> Self {
        var result: Self = 1
        
        for _ in 0..<exponent {
            result *= self  // = 1 * 2
            print("self: \(self)")
        }
        return result
    }

    
}

x.raiseTo(4)
var y = 6
y.raiseTo(4)
7.raisedTo(2)
//7.raiseTo(2) // ERROR: cannot use mutating member on immutable value: literals are not mutable


//: [Next](@next)
