//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    var arr = nums[0...k-1]
    var max = 0
    for i in arr {
        max += i
    }
    var cur = max
    if nums.count != k {
        for step in 1...nums.count - k {
            cur = cur - arr.first! + nums[k + step-1]
            max = Swift.max(cur, max)
            arr.removeFirst()
            arr.append(nums[k + step-1])
        }
    }
    return Double(max)/Double(k)
}


print(findMaxAverage([1,12,-5,-6,50,3],4))
print(findMaxAverage([5],1))
