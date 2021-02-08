//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func trap(_ height: [Int]) -> Int {
    if height.count < 3 {
        return 0
    }
    var leftMax = height.first!
    var rightMax = height.last!
    var left = 1
    var right = height.count - 2
    var res = 0
    while left <= right {
        let minVal = min(leftMax, rightMax)
        if minVal == leftMax {
            if minVal > height[left] {
                res += minVal - height[left]
            } else {
                leftMax = height[left]
            }
            left += 1
        } else {
            if minVal > height[right] {
                res += minVal - height[right]
            } else {
                rightMax = height[right]
            }
            right -= 1
        }
    }
    return res
}

print(trap([0,1,0,2,1,0,1,3,2,1,2,1]))
