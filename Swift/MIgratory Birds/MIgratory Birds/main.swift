//
//  main.swift
//  MIgratory Birds
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

var n = readLine()
var birds = takeInputAndSplitIntoArray()

var birdTypes: [Int: Int] = [:]

for birdCount in birds {
    birdTypes[birdCount] = (birdTypes[birdCount] ?? 0) + 1
}

var maxCount = 0
var maxType = 0

for key in birdTypes.keys {
    let birdCount = birdTypes[key]!
    if birdCount > maxCount {
        maxType = key
        maxCount = birdCount
    } else if birdCount == birdTypes[maxType]! {
        if key < maxType {
            maxType = key
            maxCount = birdCount
        }
    }
}

print(maxType)
