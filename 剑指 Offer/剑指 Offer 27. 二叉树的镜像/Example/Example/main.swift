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

func mirrorTree(_ root: TreeNode?) -> TreeNode? {
    if let _root = root {
        let res = TreeNode.init(_root.val)
        res.left = _root.right
        res.right = _root.left
        return res
    } else {
        return nil
    }
}
