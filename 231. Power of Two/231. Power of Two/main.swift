//
//  main.swift
//  231. Power of Two
//
//  Created by Hongzhi Zhao on 2017/3/28.
//  Copyright © 2017年 GuaHao. All rights reserved.
//

import Foundation

print("Hello, World!")

func isPowerOfTwo(_ n: Int) -> Bool {
    var temp = n
    
    if n < 0 {
        return false
    }
    var hasOne = false
    
    while temp > 0 {
        if  temp & 1 == 1{
            if hasOne {
                return false
            }else{
                hasOne = true
            }
        }
        temp = temp >> 1
    }
    
    return hasOne
}
