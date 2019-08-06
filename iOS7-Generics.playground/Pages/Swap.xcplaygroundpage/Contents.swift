//: [Previous](@previous)

import Foundation

//: Goal: Swap two numbers with a `swap()` function
var x = 5
var y = 27

//func swap(_ lhs: inout Int, _ rhs: inout Int) {
//    let tempValue = lhs
//    lhs = rhs
//    rhs = tempValue
//}

swap(&x, &y)
x
y

// Goal: Swap two values of any type (Int, Float, String, ViewController)

//func swap(_ lhs: inout Float, _ rhs: inout Float) {
//    let tempValue = lhs
//    lhs = rhs
//    rhs = tempValue
//}

var a = 3.14
var b = 25.5

swap(&a, &b)
a
b

var firstRunner = "Dave"
var secondRunner = "Pat"

// Make this generic (primitive generic type)
//func swap(_ lhs: inout Any, _ rhs: inout Any) {
//    let tempValue = lhs
//    lhs = rhs
//    rhs = tempValue
//}

func swap<Value>(_ lhs: inout Value, _ rhs: inout Value) {
    let tempValue = lhs
    lhs = rhs
    rhs = tempValue
}

swap(&firstRunner, &secondRunner)
firstRunner
secondRunner

//func add2(number: Int) -> Int {
//    return number + 2
//}

//func add2(number: Any) -> Any {
//    return number //  + 2
//}
//
//var g = add2(number: 5)
//(g as! Int) += 2

// Custom Operators
// * / + -

// <=>
//infix operator <=>
infix operator .<<

func .<<<Value>(_ lhs: inout Value, _ rhs: inout Value) {
    let tempValue = lhs
    lhs = rhs
    rhs = tempValue
}

// Downside: you lose clarity because this is custom
// Benefit: improve code clarity if you know what the operator does
//firstRunner <=> secondRunner
firstRunner .<< secondRunner

firstRunner
secondRunner
//: [Next](@next)


