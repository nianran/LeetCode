//
//  TreeNode.swift
//  Example
//
//  Created by Hongzhi Zhao on 2021/2/16.
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

public class TreeNodeGenerate {
    static func run(_ arr: [Int?]?) -> TreeNode? {
        if arr == nil || arr!.count == 0 {
            return nil
        } else {
            let node = TreeNode.init(0)
            generateTreeNode(node, arr!, 0)
            return node
        }
    }
    
    static func generateTreeNode(_ node: TreeNode,
                          _ nums: [Int?],
                          _ i: Int) {
        if i >= nums.count || nums[i] == nil  {
            return
        }
        node.val = nums[i]!
        if 2*i + 1 < nums.count && nums[2*i+1] != nil {
            node.left = TreeNode.init(0)
            generateTreeNode(node.left!, nums, 2*i+1)
        }
        
        if 2*i + 2 < nums.count && nums[2*i+2] != nil {
            node.right = TreeNode.init(0)
            generateTreeNode(node.right!, nums, 2*i+2)
        }
    }
}
