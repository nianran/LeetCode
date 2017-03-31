//
//  main.swift
//  136. Single Number
//
//  Created by Hongzhi Zhao on 2017/3/31.
//  Copyright © 2017年 GuaHao. All rights reserved.
//

import Foundation

print("Hello, World!")

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        for i in 0...nums.count-1 {
            result = result ^ nums[i]
        }
        return result
    }
}


let a = Solution.init().singleNumber([1]);
NSLog("\(a)")

