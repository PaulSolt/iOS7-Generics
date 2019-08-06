//: [Previous](@previous)

import Foundation

// Queue: first in, first out data structure (FIFO)
// Grocery store check out line

struct Queue<Element> {
    private var elements: [Element] // instance variable: ivar
    
    // push (add someone to the back of the queue)
    mutating func push(_ element: Element) {
        elements.append(element)
    }
    
    // pop (remove the first person from the front)
    mutating func pop() -> Element? {
        if elements.count > 0 {
            return elements.removeFirst()
        } else {
            return nil
        }
    }
    
    // peek (look at who is in front)
    func peek() -> Element? {
        return elements.first
    }
}

var downloaderQueue = Queue<URL>(elements: [])


downloaderQueue.push(URL(string: "https://apple.com/photos/1")!)
downloaderQueue.push(URL(string: "https://apple.com/photos/2")!)
downloaderQueue.push(URL(string: "https://apple.com/photos/3")!)
downloaderQueue.push(URL(string: "https://apple.com/photos/4")!)
downloaderQueue.push(URL(string: "https://apple.com/photos/5")!)
downloaderQueue.push(URL(string: "https://apple.com/photos/6")!)

// Later on, update the TableViewCell with each photo
let url = downloaderQueue.pop()
let data = Data(contentsOf: url)
//let image = UIImage(data: data)

var checkoutLine = Queue(elements: [27, 55, -1])//["John", "Liz"])
checkoutLine.elements

// add people
//checkoutLine.push("Dan")
checkoutLine.elements

// remove people
checkoutLine.pop()
checkoutLine.elements

checkoutLine.pop()
checkoutLine.peek()

checkoutLine.pop()
checkoutLine.elements

checkoutLine.pop()

// see who's in the front

//: [Next](@next)
