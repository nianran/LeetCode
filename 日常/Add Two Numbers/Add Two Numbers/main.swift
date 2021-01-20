//
//  main.swift
//  Add Two Numbers
//
//  Created by Hongzhi Zhao on 2016/10/11.
//  Copyright © 2016年 Hongzhi Zhao. All rights reserved.
//

import Foundation

/**
 * Definition for singly-linked list.

 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
            self.next = nil
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var flag = false
        let returnNode = ListNode.init(0)
        var tempNodeValL1 = l1?.val
        var tempNodeValL2 = l2?.val
        var nextNode  = l1
        var nextNodeL1 = l1
        var nextNodeL2 = l2
        
        var repeatFlag = 0
        
        
        repeat{
            var flagNumber = 0
            if flag == true {
                flagNumber = 1
                flag = false
            }
            
            tempNodeValL1 = tempNodeValL1 == nil ? 0 :tempNodeValL1
            tempNodeValL2 = tempNodeValL2 == nil ? 0 : tempNodeValL2
            
            var resultNum = tempNodeValL1! + tempNodeValL2! + flagNumber
            if resultNum >= 10 {
                resultNum = resultNum - 10
                flag = true
            }

            if (flag == true && nextNode?.next == nil) || (nextNodeL1?.next == nil && nextNodeL2?.next != nil) {
                nextNode?.next = ListNode.init(0)
            }
            
            if repeatFlag == 0 {
                nextNode = nextNode?.next
                nextNodeL1 = nextNodeL1?.next
                nextNodeL2 = nextNodeL2?.next
                tempNodeValL1 = nextNodeL1?.val
                tempNodeValL2 = nextNodeL2?.val
                
                returnNode.val = resultNum
                returnNode.next = nextNode
                
                repeatFlag = repeatFlag + 1
            }else{
                nextNode?.val = resultNum
                
                nextNode = nextNode?.next
                nextNodeL1 = nextNodeL1?.next
                nextNodeL2 = nextNodeL2?.next
                tempNodeValL1 = nextNodeL1?.val
                tempNodeValL2 = nextNodeL2?.val
            }
            
        }while tempNodeValL1 != nil || tempNodeValL2 != nil || flag != false
        return returnNode;
    }
    
}

/*
var node1 : ListNode? = ListNode.init(2)
var node2 : ListNode? = ListNode.init(4)
var node3 : ListNode? = ListNode.init(3)
var node4 : ListNode? = ListNode.init(5)
var node5 : ListNode? = ListNode.init(6)
var node6 : ListNode? = ListNode.init(4)

node1?.next = node2
node2?.next = node3
node4?.next = node5
node5?.next = node6

*/
var node1 : ListNode? = ListNode.init(0)
var node2 : ListNode? = ListNode.init(4)
var node3 : ListNode? = ListNode.init(3)
var node4 : ListNode? = ListNode.init(7)
var node5 : ListNode? = ListNode.init(3)
var node6 : ListNode? = ListNode.init(4)
node4?.next = node5

let node8 = Solution.init().addTwoNumbers(node1,node4)

print(node8)








