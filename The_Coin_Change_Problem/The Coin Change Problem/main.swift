//
//  main.swift
//  The Coin Change Problem
//
//  Created by Shawon Ashraf on 2019-02-12.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import Foundation


let nm = readLine()!.split(" ").map { Int($0)! }
let n = nm[0]
let m = nm[1]

let coinTypes = readLine()!.split(separator: " ").map { Int($0)! }

func provideChange(from coins: [Int], for amount: Int) -> Int {

    return 0
}