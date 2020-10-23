public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        if (head == nil) {
            return true
        }
        var list = [ListNode]()
        var current = head
        while 1 != 0 {
            list.append(current!)
            current = current?.next
            if current == nil {
                break
            }
        }
        if list.count == 1 {
            return true
        }
        var res = true
        for i in 0...(list.count+1)/2 {
            if list[i].val != list[list.count-1-i].val {
                res = false
            }
        }
        return res
    }
}
