//
//  main.swift
//  Day of The Programmer
//
//  Created by Shawon Ashraf on 2/8/19.
//  Copyright © 2019 Shawon Ashraf. All rights reserved.
//

import Foundation

func takeInput() -> Int {
    let input = readLine()
    if let yearInput = input {
        let year = Int(yearInput)!
        return year
    } else {
        fatalError("No Input!")
    }
}

// solves the problem
func dayOfProgrammer(year: Int) -> String {
    let month = "09"
    var date = 0
    
    var daysInFebruary: Int
    if year < 1918 {
        // fals in Julian calendar
        daysInFebruary = year % 4 == 0 ? 29 : 28
    } else if year > 1918 {
        // new gerogorian calendar
        daysInFebruary = isLeapYear(year: year) ? 29 : 28
    } else {
        // 1918
        daysInFebruary = 15
    }
    
    date = 256 - (215 + daysInFebruary)
    
    return "\(date).\(month).\(year)"
}

func isLeapYear(year: Int) -> Bool {
    if year % 400 == 0 || year % 4 == 0 && year % 100 != 0 {
        return true
    } else {
        return false
    }
}

let year = takeInput()
print(dayOfProgrammer(year: year))
