//
//  main.swift
//  Birthday Chocolate
//
//  Created by Shawon Ashraf on 6/11/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//

import Foundation

func takeInputAndSplitIntoArray() -> [Int] {
    let input = readLine()
    let split = input?.split(separator: " ")
    
    var array: [Int] = []
    for str in split! {
        array.append(Int(str)!)
    }
    
    return array
}

// process input
var n = Int(readLine()!)!
var squares = takeInputAndSplitIntoArray()
var birthInfo = takeInputAndSplitIntoArray()
var date = birthInfo[0]
var month = birthInfo[1]

var waysCount = 0
var len = squares.count

// iterate and check for sum of `month` number of consecutive array elements
for i in 0..<len {
    let indexRange = i + month
    if (indexRange) <= len {
        let sliced = Array(squares[i..<indexRange])
        let sum = sliced.reduce(0, { x,y in x + y })
        
        if sum == date {
            waysCount = waysCount + 1
        }
    }
}

print(waysCount)
