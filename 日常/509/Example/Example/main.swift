//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

// Fun 1
//func fib(_ N: Int) -> Int {
//    if N == 0 || N == 1 {
//        return N
//    }
//    return fib(N - 1) + fib(N - 2)
//}

// Fun 2 带有缓存计算
//var dp = Array.init(repeating: 0, count: 31)
//func fib(_ N: Int) -> Int {
//    if N == 0 || N == 1 {
//        return N
//    }
//    if dp[N] != 0 {
//        return dp[N]
//    }
//    return fib(N - 1) + fib(N - 2)
//}

// Fun 3 自下而上计算
func fib(_ N: Int) -> Int {
    if N == 0 || N == 1 {
        return N
    }
    var pre = 0
    var suf = 1
    for _ in 2...N {
        let a = pre + suf
        pre = suf
        suf = a
    }
    return suf
}

print(fib(4))
