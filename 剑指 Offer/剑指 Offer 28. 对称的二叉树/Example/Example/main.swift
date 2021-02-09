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

func mirror(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
    if root1 == nil && root2 == nil {
        return true
    }
    if root1 == nil || root2 == nil {
        return false
    }
    if root1?.val == root2?.val {
        return mirror(root1?.left, root2?.right) && mirror(root1?.right, root2?.left)
    } else {
        return false
    }
}

func isSymmetric(_ root: TreeNode?) -> Bool {
    if let _ = root {
        return mirror(root?.left, root?.right)
    } else {
        return false
    }
}
