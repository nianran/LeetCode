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
 
class Solution {
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        guard (head == nil) else {
            return nil
        }
        
        var eventHeader = head?.next
        var odd = head
        var event = eventHeader
        while event != nil && event?.next != nil {
            odd?.next = event?.next
            odd = odd?.next
            event?.next = odd?.next
            event = event?.next
        }
        odd?.next = eventHeader
        return head
    }
}
