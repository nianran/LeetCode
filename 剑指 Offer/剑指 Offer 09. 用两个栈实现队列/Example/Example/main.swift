//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

class CQueue {
    
    var stack1 = [Int]()
    var stack2 = [Int]()
    
    init() {

    }
    
    func appendTail(_ value: Int) {
        stack1.append(value)
    }
    
    func deleteHead() -> Int {
        stack2 = stack1.reversed()
        if let first = stack2.last {
            stack2.removeLast()
            stack1 = stack2.reversed()
            stack2.removeAll()
            return first
        } else {
            stack1 = stack2.reversed()
            stack2.removeAll()
            return -1
        }
    }
}

/**
 * Your CQueue object will be instantiated and called as such:
 * let obj = CQueue()
 * obj.appendTail(value)
 * let ret_2: Int = obj.deleteHead()
 */
