//
//  main.swift
//  Running Median
//
//  Created by Shawon Ashraf on 6/20/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//
// unfinished!
//

import Foundation

class BinaryHeap {
    public var dataArray: [Int]
    
    init() {
        dataArray = []
    }
    
    init(array: [Int]) {
        dataArray = array
    }
    
    private func getRootIndex() -> Int {
        return 0
    }
    
    private func getLeftSubIndex(ofElement i: Int) -> Int {
        return 2 * i + 1
    }
    
    private func getRightSubIndex(ofElement i: Int) -> Int {
        return 2 * i + 2
    }
    
    private func getParentIndex(ofElement i: Int) -> Int {
        return 2 * i
    }
    
    private func minHeapify(element i: Int) {
        let leftIndex = getLeftSubIndex(ofElement: i)
        let rightIndex = getRightSubIndex(ofElement: i)
        var minElementIndex: Int
        
        if leftIndex < dataArray.count && dataArray[dataArray.index(dataArray.startIndex, offsetBy: leftIndex)] < dataArray[dataArray.index(dataArray.startIndex, offsetBy: i)] {
            minElementIndex = leftIndex
        } else {
            minElementIndex = i
        }
        
        if rightIndex < dataArray.count && dataArray[dataArray.index(dataArray.startIndex, offsetBy: rightIndex)] < dataArray[dataArray.index(dataArray.startIndex, offsetBy: minElementIndex)] {
            minElementIndex = rightIndex
        }
        
        if minElementIndex != i {
            // swap
            let temp = dataArray[dataArray.index(dataArray.startIndex, offsetBy: minElementIndex)]
            
            dataArray[dataArray.index(dataArray.startIndex, offsetBy: minElementIndex)] = dataArray[dataArray.index(dataArray.startIndex, offsetBy: i)]
            dataArray[dataArray.index(dataArray.startIndex, offsetBy: i)] = temp
            
            
            minHeapify(element: minElementIndex)
        }
    }
    
    public func buildMinHeap() {
        let len = dataArray.count / 2
        for i in (0..<len).reversed() {
            minHeapify(element: i)
        }
    }
    
    private func maxHeapify(element i: Int) {
        let leftIndex = getLeftSubIndex(ofElement: i)
        let rightIndex = getRightSubIndex(ofElement: i)
        var maxElementIndex: Int
        
        if leftIndex < dataArray.count && dataArray[dataArray.index(dataArray.startIndex, offsetBy: leftIndex)] > dataArray[dataArray.index(dataArray.startIndex, offsetBy: i)] {
            maxElementIndex = leftIndex
        } else {
            maxElementIndex = i
        }
        
        if rightIndex < dataArray.count && dataArray[dataArray.index(dataArray.startIndex, offsetBy: rightIndex)] > dataArray[dataArray.index(dataArray.startIndex, offsetBy: maxElementIndex)] {
            maxElementIndex = rightIndex
        }
        
        if maxElementIndex != i {
            // swap
            let temp = dataArray[dataArray.index(dataArray.startIndex, offsetBy: maxElementIndex)]
            
            dataArray[dataArray.index(dataArray.startIndex, offsetBy: maxElementIndex)] = dataArray[dataArray.index(dataArray.startIndex, offsetBy: i)]
            dataArray[dataArray.index(dataArray.startIndex, offsetBy: i)] = temp
            
            maxHeapify(element: maxElementIndex)
        }
    }
    
    public func buildMaxHeap() {
        let len = dataArray.count / 2
        for i in (0..<len).reversed() {
            maxHeapify(element: i)
        }
    }
    
    
    
    public func getRoot() -> Int {
        let rootIndex = getRootIndex()
        return dataArray[dataArray.index(dataArray.startIndex, offsetBy: rootIndex)]
    }
}


// test
let array = [12, 4, 5, 3, 8, 7].sorted()
var minHeap = BinaryHeap(array: array)
var maxHeap = BinaryHeap(array: array)

minHeap.buildMinHeap()
maxHeap.buildMaxHeap()

print(minHeap.dataArray)
print(maxHeap.dataArray)
