//
//  main.swift
//  35. Search Insert Position
//
//  Created by Hongzhi Zhao on 2017/3/27.
//  Copyright © 2017年 GuaHao. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var result = 0
        for item in nums {
            if item < target {
                result += 1
            }
        }
        return result
    }
}
*/

// 尝试二分法
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
        
        while low <= high {
            let mid = (low + high)/2
            if target == nums[mid] {
                return mid
            }
            
            if target < nums[mid] {
                high = mid - 1
            }else{
                low = mid + 1
            }
        }
        return low
    }
}

var arr = [1]
Solution.init().searchInsert(arr, 2)


