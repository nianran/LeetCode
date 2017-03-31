//
//  main.swift
//  342. Power of Four
//
//  Created by Hongzhi Zhao on 2017/3/31.
//  Copyright © 2017年 GuaHao. All rights reserved.
//

import Foundation

print("Hello, World!")

class Solution {
    func isPowerOfFour(_ num: Int) -> Bool {
        return num > 0 && (num & (num - 1)) == 0 && (num & 0x55555555) != 0
    }
}

let a = Solution.init().isPowerOfFour(16)
NSLog("\(a)")


