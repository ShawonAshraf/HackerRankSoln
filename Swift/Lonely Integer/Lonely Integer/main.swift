//
//  main.swift
//  Lonely Integer
//
//  Created by Shawon Ashraf on 6/20/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//

import Foundation

guard let n = readLine() else { fatalError() }
guard let input = readLine() else { fatalError() }

let dataArray = input.split(separator: " ").map({ x in Int(x) })
var dict: [Int: Int] = [:]

for i in dataArray {
    dict[i!] = (dict[i!] ?? 0) + 1
}

let x = dict.min(by: { a, b in a.value < b.value })

if let key = x?.key {
    print(key)
}
