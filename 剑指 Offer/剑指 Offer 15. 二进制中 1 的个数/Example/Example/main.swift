//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation


func singleNumbers(_ nums: [Int]) -> [Int] {
    var temp = 0
    for num in nums {
        temp ^= num
    }
    var div = 1
    while div&temp == 0 {
       div = div << 1
    }
    var a = 0
    var b = 0
    for num in nums {
        if num&div == 0 {
            a ^= num
        } else {
            b ^= num
        }
    }
    return [a,b]
}

print(singleNumbers([4,1,4,6]))
