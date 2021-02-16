
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

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root = root else { return [] }

    var result: [[Int]] = []
    var queue: [TreeNode] = [root]

    while !queue.isEmpty {
        var levelResult: [Int] = []

        for _ in 0 ..< queue.count {
            let node = queue.removeFirst()
            levelResult.append(node.val)
            if let left = node.left { queue.append(left) }
            if let right = node.right { queue.append(right) }
        }

        result.append(levelResult)
    }

    return result
}


func generateTreeNode(_ node: TreeNode,
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

var node = TreeNode.init(0)
generateTreeNode(node, [3,9,20,nil,nil,15,7], 0)
print(node)

print(levelOrder(node))

