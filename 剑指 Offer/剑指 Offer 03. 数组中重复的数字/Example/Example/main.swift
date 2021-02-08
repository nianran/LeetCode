//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func findRepeatNumber(_ nums: [Int]) -> Int {
    var dic = [Int: Int]()
    for num in nums {
        if dic.keys.contains(num) {
            return num
        } else {
            dic[num] = 1
        }
    }
    return 0
}

print(findRepeatNumber([2, 3, 1, 0, 2, 5, 3]))
