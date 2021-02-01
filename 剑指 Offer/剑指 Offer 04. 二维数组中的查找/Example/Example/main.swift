//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation


func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
    var arr = matrix
    while let item = arr.last?.first {
        if item == target {
            return true
        } else if(item > target) {
            arr.removeLast()
        } else if(item < target) {
            for i in 0..<arr.count {
                arr[i].removeFirst()
            }
        }
    }
    return false
}


let arr = [
    [1,   4,  7, 11, 15],
    [2,   5,  8, 12, 19],
    [3,   6,  9, 16, 22],
    [10, 13, 14, 17, 24],
    [18, 21, 23, 26, 30]
  ]

print(findNumberIn2DArray(arr, 32))

