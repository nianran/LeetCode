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
        var a = num
        while a > 0 {
            a = a >> 2
            if a / 4 == 0 && a % 4 != 0 {
                break
            }
        }
        if a / 4 == 0 {
            return true
        }else{
            return false
        }
    }
}

let a = Solution.init().isPowerOfFour(21)
NSLog("\(a)")


