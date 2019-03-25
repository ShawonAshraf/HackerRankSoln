//
//  main.swift
//  Breaking The records
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


var n = Int(readLine()!)!
var scores = takeInputAndSplitIntoArray()

var maxScore = scores[0]
var minScore = scores[0]
var maxBreakCount = 0
var minBreakCount = 0

for score in scores {
    if score > maxScore {
        maxBreakCount = maxBreakCount + 1
        maxScore = score
    } else if score < minScore {
        minBreakCount = minBreakCount + 1
        minScore = score
    }
}


// print result
print("\(maxBreakCount) \(minBreakCount)")
