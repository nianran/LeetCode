//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func majorityElement(_ nums: [Int]) -> Int {
    var cur = 0
    var count = 0
    for num in nums {
        if count == 0 {
            cur = num
        }
        if num == cur {
            count += 1
        } else {
            count -= 1
        }
    }
    return cur
}

print(majorityElement([1,2,1,1,1,3]))
//print(spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12]]))
//print(spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]))
