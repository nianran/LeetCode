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

func maxDepth(_ root: TreeNode?) -> Int {
    if root == nil {
        return 0
    }
    return max(maxDepth(root?.left), maxDepth(root?.right)) + 1
}
