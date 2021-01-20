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

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var flag = l1!.val + l2!.val >= 10 ? 1 : 0
    let list = ListNode.init((flag != 0) ? l1!.val + l2!.val - 10 : l1!.val + l2!.val)
    var _l1 = l1?.next
    var _l2 = l2?.next
    var current = list
    while (_l1 != nil) || (_l2 != nil) || flag == 1 {
        let val = (_l1?.val ?? 0) + (_l2?.val ?? 0) + flag
        if val >= 10 {
            flag = 1
            current.next = ListNode.init(val - 10)
        } else {
            flag = 0
            current.next = ListNode.init(val)
        }
        current = current.next!
        _l1 = _l1?.next
        _l2 = _l2?.next
    }
    return list
}

var l1 = ListNode.init()
var l2 = ListNode.init()
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

_l1 = nil
_l2 = nil

print(addTwoNumbers(l1, l2))
