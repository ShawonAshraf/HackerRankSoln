//
//  main.swift
//  Between Two Sets
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
    
    return array.sorted()
}

var inputArray = takeInputAndSplitIntoArray()
var A = takeInputAndSplitIntoArray()
var B = takeInputAndSplitIntoArray()

func gcdTwoVar(a: Int, b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcdTwoVar(a: b, b: a % b)
    }
}

func gcdArray(_ a: [Int]) -> Int {
    let len = a.count
    var ret = a[0]
    for i in 1..<len {
        ret = gcdTwoVar(a: ret, b: a[i])
    }
    
    return ret
}

func lcmTwoVars(a:Int, b:Int) -> Int {
    return (a * b) / gcdTwoVar(a: a, b: b)
}

func lcmArray(_ a: [Int]) -> Int {
    let len = a.count
    var ret = a[0]
    for i in 1..<len {
        ret = lcmTwoVars(a: ret, b: a[i])
    }
    
    return ret
}

var lcm = lcmArray(A)
var gcd = gcdArray(B)


// multiple counter
var counter = 0
var j = 2
var i = lcm

while(i <= gcd) {
    if gcd % i == 0 {
        counter = counter + 1
    }
    i = lcm * j
    j = j + 1
}

// print result
print(counter)
