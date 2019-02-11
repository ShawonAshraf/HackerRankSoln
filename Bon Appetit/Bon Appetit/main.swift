//
//  main.swift
//  Bon Appetit
//
//  Created by Shawon Ashraf on 2/11/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import Foundation

// take input
let nk = readLine()!.split(separator: " ")
let n = Int(nk[0])!
let k = Int(nk[1])!


var bills = readLine()!.split(separator: " ").map { Int($0)! }
let b = Int(readLine()!)!

// fair bill for ana
let removed = bills.remove(at: k)
let actual = bills.reduce(0, { $0 + $1 }) / 2

let refund = b - actual
//print("Refund => \(refund)")
refund == 0 ? print("Bon Appetit") : print("\(refund)")
