//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func dfs(_ board: [[Character]], _ word: String, _ i: Int, _ j: Int, _ k: Int) -> Bool {
    if i < 0 || j < 0 || i >= board.count || j >= board[0].count || board[i][j] != word[word.index(word.startIndex, offsetBy: k)] {
        return false
    }
    if(k == word.count - 1) {return true}
    var _board = board
    _board[i][j] = Character("/")
    let result =
        dfs(_board, word, i, j + 1, k + 1)
        || dfs(_board, word, i, j - 1, k + 1)
        || dfs(_board, word, i + 1, j, k + 1)
        || dfs(_board, word, i - 1, j, k + 1)
    return result
}

func exist(_ board: [[Character]], _ word: String) -> Bool {
    for i in 0..<board.count {
        for j in 0..<board[0].count {
            if dfs(board, word, i, j, 0) {return true}
        }
    }
    return false
}

print(exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "ABCCED"))
