//
//  main.swift
//  268. Missing Number
//
//  Created by Hongzhi Zhao on 2017/3/28.
//  Copyright © 2017年 GuaHao. All rights reserved.
//

import Foundation

print("Hello, World!")

func missingNumber(_ nums: [Int]) -> Int {
    var x = 0
    for item in 0...nums.count {
        x = item ^ x
    }
    
    for item in nums {
        x = item ^ x
    }
    return x
}

missingNumber([0,1,3])
