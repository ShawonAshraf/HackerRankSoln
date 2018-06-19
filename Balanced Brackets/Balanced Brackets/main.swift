//
//  main.swift
//  Balanced Brackets
//
//  Created by Shawon Ashraf on 6/19/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//

import Foundation

guard let n = Int(readLine()!) else { fatalError("Invalid Input") }


func isBalanced(expression: String) -> Bool {
    var stack: [Character] = []
    var dict: [Character: Character] = [
        "(": ")", "{": "}", "[": "]"
    ]
    for c in expression {
        if c == "(" || c == "{" || c == "[" {
            stack.append(dict[c]!)
        } else {
            if stack.count == 0 || stack.last! != c {
                return false
            }
            stack.popLast()
        }
    }
    
    return stack.count == 0
}

for _ in 0..<n {
    guard let expression = readLine() else { fatalError("Invalid Input") }
    let balanced = isBalanced(expression: expression)

    if balanced {
        print("YES")
    } else {
        print("NO")
    }
}

