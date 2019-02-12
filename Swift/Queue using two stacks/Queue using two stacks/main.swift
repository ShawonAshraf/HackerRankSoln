//
//  main.swift
//  Queue using two stacks
//
//  Created by Shawon Ashraf on 6/19/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//

import Foundation

class Queue {
    private var dataArray: [Int]
    
    init() {
        dataArray = []
    }
    
    init(dataArray: [Int]) {
        self.dataArray = dataArray
    }
    
    func enqueue(element e: Int) {
        dataArray.append(e)
    }
    
    func dequeue() -> Int {
        let front = dataArray.remove(at: dataArray.startIndex)
        return front
    }
    
    func peek() -> Int {
        return dataArray[dataArray.startIndex]
    }
}

guard let q = Int(readLine()!) else { fatalError("Invalid Input") }
var queue: Queue = Queue()

for _ in 0..<q {
    guard let input = readLine() else { fatalError("Invalid") }
    let ops = input.split(separator: " ")
    let opCode = Int(ops[0])!
    
    switch opCode {
    case 1:
        guard let el = Int(ops[1]) else { fatalError("Invalid") }
        queue.enqueue(element: el)
    case 2:
        queue.dequeue()
    case 3:
        print(queue.peek())
    default:
        print("Fallback!")
    }
}
