//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func minArray(_ numbers: [Int]) -> Int {
    if numbers.count == 0 {
        return 0
    }
    var cur = numbers.first!
    for item in numbers {
        if item >= cur {
            cur = item
        } else {
            return item
        }
    }
    return cur == numbers.last! ? numbers.first! : cur
}

print(minArray([1,3,5]))
print(minArray([1]))
print(minArray([1,2,3,0]))
print(minArray([2,2,2,2,0,1]))
