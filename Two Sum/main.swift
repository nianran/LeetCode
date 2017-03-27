//
//  main.swift
//  Two Sum
//
//  Created by Hongzhi Zhao on 2016/10/11.
//  Copyright © 2016年 Hongzhi Zhao. All rights reserved.
//

import Foundation

print("Hello, World!")


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    for i in 0  ..< nums.count  {
        for j : Int in i+1 ..< nums.count {
            let sum = nums[i] + nums[j];
            if target == sum {
                return [i,j]
            }
        }
    }
    return [];
}

let arr = twoSum([1,2,3,4], 5);

print(arr);

