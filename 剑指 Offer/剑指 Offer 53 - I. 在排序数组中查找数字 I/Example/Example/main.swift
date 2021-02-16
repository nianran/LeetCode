//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func search(_ nums: [Int], _ target: Int) -> Int {
    return getRightMargin(nums, target) - getRightMargin(nums, target - 1)
}

func getRightMargin(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count - 1
    while left <= right {
        let mid = (left + right)/2
        if nums[mid] <= target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return left
}
