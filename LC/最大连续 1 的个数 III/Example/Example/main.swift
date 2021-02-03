//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func longestOnes(_ A: [Int], _ K: Int) -> Int {
    var _remainder = K
    var maxVal = 0
    var left = 0
    var right = 0
    while right < A.count {
        if _remainder > 0 {
            if A[right] == 0 {
                _remainder -= 1
            }
            right += 1
        } else {
            if A[right] == 1 {
                right += 1
            } else {
                if A[left] == 0 {
                    _remainder += 1
                }
                left += 1
            }
        }
        maxVal = max(right-left, maxVal)
    }
    return maxVal
}

print(longestOnes([0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1],0))
