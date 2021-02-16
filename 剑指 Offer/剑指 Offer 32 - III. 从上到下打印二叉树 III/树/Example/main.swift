
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
    if root == nil {
        return [[Int]]()
    }
    
    var queue = [root!]
    var levelNode = [[Int]]()
    var curDeep = 0
    while !queue.isEmpty {
        if levelNode.count <= curDeep {
            levelNode.append([Int]())
        }
        curDeep += 1
        var tempArr = [TreeNode]()
        for i in 0..<queue.count {
            let curNode = queue[i]
            if curDeep%2 == 1 {
                levelNode[curDeep - 1].append(curNode.val)
            } else {
                levelNode[curDeep - 1].insert(curNode.val, at: 0)
            }
            if let left = curNode.left {
                tempArr.append(left)
            }
            if let right = curNode.right {
                tempArr.append(right)
            }
        }
        queue.removeAll()
        queue.append(contentsOf: tempArr)
    }
    return levelNode
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

