import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func reorderList(_ head: ListNode?) {
        var arr: [ListNode] = []
        var temp = head
        while let a = temp?.next {
            arr.append(a)
            temp = temp?.next
        }
        for i in 0...arr.count {
            
        }
    }
}
