import Foundation

//: ## Get Started
//: ### Subheads
//: Normal text

//: Goal: Increment a number by 1 when I call the `increment(number:)` function

var x = 0

//increment(number: x) // x = 1

//func increment(number: Int) {
//    number += 1 // ERROR: Left side of mutating operator isn't mutable: 'number' is a 'let' constant
//}

func increment(number: inout Int) {
    number += 1
}


increment(number: &x)
x

//: [Next](@next)
