
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

func isInclude(_ node1: TreeNode?, _ node2: TreeNode?) -> Bool {
    if node2 == nil {
        return true
    }
    if node1 == nil {
        return false
    }
    if node1?.val != node2?.val {
        return false
    }
    return isInclude(node1?.left, node2?.left)
        && isInclude(node1?.right, node2?.right)
}

func isSubStructure(_ A: TreeNode?, _ B: TreeNode?) -> Bool {
    if B == nil {
        return false
    }
    if A == nil {
        return false
    }
    return isInclude(A, B)
        || isSubStructure(A?.left, B)
        || isSubStructure(A?.right, B)
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

var node1 = TreeNode.init(0)
var node2 = TreeNode.init(0)
generateTreeNode(node1, [1,2,3,4], 0)
generateTreeNode(node2, [3], 0)
print(isSubStructure(node1, node2))

//var node = TreeNode.init(0)
//generateTreeNode(node, [3,9,20,nil,nil,15,7], 0)
//print(node)
//
//print(levelOrder(node))

