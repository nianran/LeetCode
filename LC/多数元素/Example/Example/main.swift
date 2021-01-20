//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func majorityElement(_ nums: [Int]) -> Int {
    return nums.sorted()[nums.count/2]
}

print(majorityElement([1,1,2]))
