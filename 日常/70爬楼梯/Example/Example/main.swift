//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

var cache = [Int: Int]()

//func climbStairs(_ n: Int) -> Int {
//    if let res = cache[n] {
//        return res
//    }
//    if n < 0 {
//        return 0
//    }
//    if n == 1 {
//        return 1
//    }
//    if n == 2 {
//        return 2
//    }
//    let current = climbStairs(n - 1) + climbStairs(n - 2)
//    cache[n] = current
//    return current
//}

func climbStairs(_ n: Int) -> Int {
    cache[0] = 0
    cache[1] = 1
    cache[2] = 2
    if n > 2 {
        for i in 3...n {
            cache[i] = cache[i - 1]! + cache[i - 2]!
        }
    }
    return cache[n]!
}

print(climbStairs(2))
print(climbStairs(44))
