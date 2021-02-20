//
//  ListNode.swift
//  Example
//
//  Created by Hongzhi Zhao on 2021/2/16.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    weak var pre: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

public class ListNodeGenerate {
    static func run(_ arr: [Int]?) -> ListNode? {
        if arr == nil || arr!.count == 0 {
            return nil
        } else {
            var l1: ListNode? = ListNode.init()
            for i in 0..<arr!.count {
                l1?.val = arr![i]
                if i < arr!.count - 1 {
                    l1?.next = ListNode.init()
                    l1 = l1?.next!
                }
            }
            return l1
        }
    }
}
