//
//  main.swift
//  Tries Contacts
//
//  Created by Shawon Ashraf on 6/20/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//
// https://www.hackerrank.com/challenges/ctci-contacts/problem
//

import Foundation

class TrieNode {
    private var charMap: [Character: TrieNode]
    public var size: Int
    
    init() {
        charMap = [:]
        size = 0
    }
    
    public func add(c: Character) {
        if let _ = self.charMap[c] {
            // do nothing if exists
        } else {
            self.charMap[c] = TrieNode()
        }
    }
    
    public func getChild(c: Character) -> TrieNode? {
        return self.charMap[c]
    }
}

class Trie {
    private var root: TrieNode
    
    init() {
        root = TrieNode()
    }
    
    init(words: [String]) {
        root = TrieNode()
        for word in words {
            self.add(word: word)
        }
    }
    
    public func add(word: String) {
        var current = root
        for c in word {
            current.add(c: c)
            current = current.getChild(c: c)!
            current.size = current.size + 1
        }
    }
    
    public func find(prefix: String) -> Int {
        var current = root
        for c in prefix {
            if let childNode = current.getChild(c: c) {
                current = childNode
            } else {
                return 0
            }
        }
        
        return current.size
    }
}

// take input
guard let n = Int(readLine()!) else { fatalError("") }
var trie = Trie()

for _ in 0..<n {
    guard let input = readLine() else { fatalError("") }
    let ops = input.split(separator: " ")
    let command = String(ops[0])
    let word = String(ops[1])
    
    switch command {
    case "add":
        trie.add(word: word)
    case "find":
        let noOfOcurrences = trie.find(prefix: word)
        print("\(noOfOcurrences)")
    default:
        print("fallback")
    }
}

