//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//


import Foundation

func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
    
    if root == nil || p == nil || q == nil {
        return nil
    }
    if (root!.val >= p!.val  && root!.val <= q!.val)
        || (root!.val >= q!.val  && root!.val <= p!.val){
        return root
    }
    let leftRes = lowestCommonAncestor(root?.left, p, q)
    let rightRes = lowestCommonAncestor(root?.right, p, q)
    if let _ = leftRes {
        return leftRes
    }
    if let _ = rightRes {
        return rightRes
    }
    return nil
}

let root = TreeNodeGenerate.run([6,2,8,0,4,7,9,nil,nil,3,5])
let p = TreeNodeGenerate.run([3])
let q = TreeNodeGenerate.run([5])

let res = lowestCommonAncestor(root, p, q)
print(res)
