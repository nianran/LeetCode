//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

var res = 0
var curK = 0

func dfs(_ node: TreeNode?) {
    if let right = node?.right {
        dfs(right)
    }
    if curK == 0 {
        return
    }
    curK -= 1
    if curK == 0 {
        res = node!.val
    }
    if let left = node?.left {
        dfs(left)
    }
}

func kthLargest(_ root: TreeNode?, _ k: Int) -> Int {
    if root == nil {
        return 0
    }
    res = 0
    curK = k
    dfs(root)
    return res
}
