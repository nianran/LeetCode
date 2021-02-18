//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

var _grid: [[Character]] = [[Character]]()
let char1 = Character("1")
let char0 = Character("0")
func numIslands(_ grid: [[Character]]) -> Int {
    if grid.count == 0 {
        return 0
    }
    _grid = grid
    var res = 0
    for i in 0..<grid.count {
        for j in 0..<grid.first!.count {
            if _grid[i][j] == char1 {
                findIsLands(i: i, j: j)
                res += 1
            }
        }
    }
    return res
}

func findIsLands(i: Int, j: Int) {
    if i >= 0 && j >= 0 && i < _grid.count && j < _grid.first!.count && _grid[i][j] == char1 {
        _grid[i][j] = "2"
        findIsLands(i: i-1, j: j)
        findIsLands(i: i+1, j: j)
        findIsLands(i: i, j: j-1)
        findIsLands(i: i, j: j+1)
    }
    
}

print(numIslands([["1","1","1"],
                  ["0","1","0"],
                  ["1","1","1"]]
))
