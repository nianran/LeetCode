//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

var res = 0
var arr = [[Int]]()
func dfs( _ i: Int, _ j: Int, _ k: Int) {
    if i < 0 || j < 0 || i >= arr.count || j >= arr[0].count || arr[i][j] != 0 {
        return
    }
    let sum = i/10 + i%10 + j/10 + j%10
    arr[i][j] = -1
    if sum <= k {
        res += 1
        dfs( i, j + 1, k)
        dfs( i + 1, j, k)
        print(i,j)
    }
}
func movingCount(_ m: Int, _ n: Int, _ k: Int) -> Int {
    arr = Array.init(repeating: Array.init(repeating: 0, count: n), count: m)
    res = 0
    dfs( 0, 0, k)
    return res
}

print(movingCount(38, 15, 9))
