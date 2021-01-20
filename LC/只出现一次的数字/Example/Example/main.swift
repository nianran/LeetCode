//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func singleNumber(_ nums: [Int]) -> Int {
    var res = nums[0]
    for i in 1..<nums.count {
        res = res^nums[i]
    }
    return res
}

print(singleNumber([1,1,2]))
