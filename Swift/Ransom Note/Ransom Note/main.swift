//
//  main.swift
//  Ransom Note
//
//  Created by Shawon Ashraf on 6/18/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//
// https://www.hackerrank.com/challenges/ctci-ransom-note/problem

import Foundation

func takeInputAndReturnString() -> String {
    let input = readLine()
    
    if let str = input {
        return str
    } else {
        fatalError("Error in input")
    }
}

func splitAsStringArray(str: String, separator: Character) -> [String] {
    var splitted: [String] = []
    for s in str.split(separator: separator) {
        splitted.append(String(s))
    }
    return splitted
}

func generatesNote(magazine: inout [String: Int], notes: [String]) -> Bool {
    for note in notes {
        if magazine[note] != nil {
            magazine.removeValue(forKey: note)
        } else {
            return false
        }
    }
    return true
}

let nm = takeInputAndReturnString()
let magazine = takeInputAndReturnString()
let note = takeInputAndReturnString()

var magazineArray = splitAsStringArray(str: magazine, separator: " ")
var magDict: [String: Int] = [:]
for mag in magazineArray {
    magDict[mag] = (magDict[mag] ?? 0) + 1
}

var noteArray = splitAsStringArray(str: note, separator: " ")

let generates = generatesNote(magazine: &magDict, notes: noteArray)
generates ? print("Yes") : print("No")

