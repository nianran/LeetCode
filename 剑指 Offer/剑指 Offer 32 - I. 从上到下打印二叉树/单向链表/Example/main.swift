
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



func levelOrder(_ root: TreeNode?) -> [Int] {
    if root == nil {
        return [Int]()
    }
    var arr = [TreeNode]()
    var res = [Int]()
    arr.append(root!)
    while arr.count != 0 {
        let cur = arr.first
        res.append(cur!.val)
        if let left = cur!.left {
            arr.append(left)
        }
        if let right = cur!.right {
            arr.append(right)
        }
        arr.removeFirst()
    }
    return res
}
