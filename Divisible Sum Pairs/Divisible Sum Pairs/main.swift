//
//  main.swift
//  Divisible Sum Pairs
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

func hasMatch(a: Int, b: Int, k: Int) -> Bool {
    return (a + b) % k == 0
}


var k = takeInputAndSplitIntoArray()[1]
var array = takeInputAndSplitIntoArray()
var n = array.count

var pairCount = 0

for i in 0..<n {
    for j in 0..<n {
        if i < j && hasMatch(a: array[i], b: array[j], k: k) {
            pairCount = pairCount + 1
        }
    }
}

print(pairCount)
