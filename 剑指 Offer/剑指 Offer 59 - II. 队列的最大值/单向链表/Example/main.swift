//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//
class MaxQueue {
    var maxQueue = [Int]()
    var queue = [Int]()
    
    func max_value() -> Int {
        if let value = maxQueue.first {
            return value // 永远保证maxQueue的第一个数为当前队列的最大值
        }
        return -1
    }
    
    func push_back(_ value: Int) {
        while let last = maxQueue.last, last < value {
            maxQueue.removeLast() // 后面添加的数如果比前面的大，那么前面的数不可能是最大值，直接移除
        }
        queue.append(value)
        maxQueue.append(value) // 每次添加新值，都有可能成为最大值（队列前面的数可能会被移除）
    }
    
    func pop_front() -> Int {
        if let first = queue.first {
            queue.removeFirst()
            if let maxFirst = maxQueue.first, maxFirst == first {
                maxQueue.removeFirst() // 当前数如果是最大值则移除
            }
            return first
        }
        return -1
    }
}
