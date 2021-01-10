//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result: [Int] = Array.init(repeating: 0, count: 2)
    var hash: [Int: Int] = [:]
    for i in 0..<nums.count {
        hash[nums[i]] = i
    }
    for i in 0..<nums.count {
        if let temp = hash[target - nums[i]] {
            if i == temp {
                continue
            }
            result[0] = i
            result[1] = temp
            break
        }
    }
    return result
}

print(twoSum([2,7,11,15], 9))
