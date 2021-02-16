//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func findContinuousSequence(_ target: Int) -> [[Int]] {
    var left = 1
    var right = 2
    var res = [[Int]]()
    while left < right {
        let sum = (left + right)*(right-left + 1)/2
        if sum == target {
            var result = [Int]()
            for i in left...right {
                result.append(i)
            }
            res.append(result)
            left += 1
        } else if (sum < target) {
            right += 1
        } else {
            left += 1
        }
    }
    return res
}

print(findContinuousSequence(15))
