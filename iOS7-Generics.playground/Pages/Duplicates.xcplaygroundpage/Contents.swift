//: [Previous](@previous)

import Foundation

//func removeDuplicates(array: [Int]) -> [Int] {
//    var result: [Int] = []
//
//    for item in array {
//        if !result.contains(item) {
//            result.append(item)
//        }
//    }
//    return result
//}

let array = [1, 2, 3, 4, 5, 6, 7, 1, 6, 8, 3, 5, 9, 3, 2]
// [1, 2, 3, 4, 5, 6, 7, 8, 9]
let newArray = removeDuplicates(array: array)
print(newArray)

//func removeDuplicates<Element: Equatable>(array: [Element]) -> [Element] {
//    var result: [Element] = []
//
//    for item in array {
//        if !result.contains(item) {
//            result.append(item)
//        }
//    }
//    return result
//}

func removeDuplicates<Element: Hashable>(array: [Element]) -> [Element] {
    let set = Set(array)
    return Array(set)
}


let names = ["Sue", "John", "Jimmy", "Alice", "Jimmy", "Sue"]
// ["Sue", "John", "Jimmy", "Alice"]

let uniqueNames = removeDuplicates(array: names)
print(uniqueNames)
//: [Next](@next)
