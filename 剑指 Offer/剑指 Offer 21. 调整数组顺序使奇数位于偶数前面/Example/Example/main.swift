//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func exchange(_ nums: [Int]) -> [Int] {
    if nums.count == 0 {
        return nums
    }
    var _nums = nums
    var cur = 0
    for i in 0...nums.count - 1 {
        if nums[i] % 2 == 1 {
            _nums.insert(nums[i], at: cur)
            _nums.remove(at: i + 1)
            cur += 1
        }
    }
    return _nums
}

print(exchange([1,2,3,4]))
