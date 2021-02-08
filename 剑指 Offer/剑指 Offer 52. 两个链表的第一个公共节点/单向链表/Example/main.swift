//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation



public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    var left = headA
    var right = headB
    while left != right {
        left = left?.next ?? headB
        right = right?.next ?? headA
    }
    return left
}


var l1: ListNode? = ListNode.init()
var l2: ListNode? = ListNode.init()
var _l1: ListNode? = l1
var _l2: ListNode? = l2


let num1 = [2,4,3]
let num2 = [5,6,4]
for i in 0..<num1.count {
    _l1?.val = num1[i]
    if i < num1.count - 1 {
        _l1?.next = ListNode.init()
        _l1 = _l1?.next!
    }
}

for i in 0..<num2.count {
    _l2?.val = num2[i]
    if i < num2.count - 1 {
        _l2?.next = ListNode.init()
        _l2 = _l2?.next!
    }
}

if num1.count == 0 {
    l1 = nil
}

if num2.count == 0 {
    l2 = nil
}

_l1 = nil
_l2 = nil

let node = getIntersectionNode(l1, l2)

print(node)

