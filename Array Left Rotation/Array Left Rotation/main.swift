//
//  main.swift
//  Array Left Rotation
//
//  Created by Shawon Ashraf on 6/14/18.
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

let d = takeInputAndSplitIntoArray()[1]
var inputArray = takeInputAndSplitIntoArray()

func rotateLeft(array: inout [Int], rotations: Int) -> Void {
    for _ in 0..<rotations {
        let current = array.remove(at: 0)
        array.append(current)
    }
}

rotateLeft(array: &inputArray, rotations: d)

// print in format
let output: String = inputArray.map({String($0)}).joined(separator: " ")
print(output)

