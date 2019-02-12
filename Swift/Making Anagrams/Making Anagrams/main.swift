//
//  main.swift
//  Making Anagrams
//
//  Created by Shawon Ashraf on 6/14/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//
// https://www.hackerrank.com/challenges/ctci-making-anagrams/problem

import Foundation

func takeInputAndReturnString() -> String {
    let input = readLine()
    
    if let str = input {
        return str
    } else {
        fatalError("Bad Input")
    }
}


var a = takeInputAndReturnString()
var b = takeInputAndReturnString()

func charFreq(str: String) -> [Character : Int] {
    var freq: [Character : Int] = [:]
    
    for i in str {
       freq[i] = (freq[i] ?? 0) + 1
    }
    
    return freq
}

// get freq for string a
var freq = charFreq(str: a)

// decrement the frequency of the common letters
// if they don't exist, they'll become negative
// since the optional will have a default value of 0 in case
// nil gets encountered
let len = b.count
for i in 0..<len {
    let c = b[b.index(b.startIndex, offsetBy: i)]
    freq[c] = (freq[c] ?? 0) - 1
}

var count = 0
for char in freq.keys {
    if let x = freq[char] {
        count = count + abs(x)
    } else {
        fatalError("DictKey Error")
    }
}
print(count)

