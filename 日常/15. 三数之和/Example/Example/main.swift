//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    if nums.count < 3 {
        return []
    }
    var res = [[Int]]()
    let _nums = nums.sorted()
    for i in 0..._nums.count-1 {
        if (_nums[i] > 0) || (i > 0 && i != nums.count - 1 && _nums[i] == _nums[i-1]) {
            continue
        }
        let cur = _nums[i]
        var left = i + 1
        var right = _nums.count-1
        while left<right {
            if cur + _nums[left] + _nums[right] == 0 {
                res.append([cur,_nums[left],_nums[right]])
                while left < right && _nums[left] == _nums[left+1] {
                    left += 1
                }
                while left < right && _nums[right] == _nums[right-1] {
                    right -= 1
                }
                left += 1
                right -= 1
            } else if cur + _nums[left] + _nums[right] > 0 {
                right -= 1
            } else {
                left += 1
            }
        }
    }
    
    return res
}

print(threeSum([-1,0,1,2,-1,-4]))
