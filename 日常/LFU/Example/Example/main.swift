//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation
class LFUCache {
    var head = ListNode(0, 0) // 使用空节点，方便后序使用
    var tail = ListNode(0, 0)

    var dict = [Int: ListNode]()
    var freDict = [Int: ListNode]()
    let capacity: Int
    var count = 0

    init(_ capacity: Int) {
        self.capacity = capacity
        head.next = tail
        tail.pre = head
    }
    
    func get(_ key: Int) -> Int {
        if let node = dict[key] {
            remove(node)
            node.fre += 1
            add(node)
            return node.val
        } else {
            return -1
        }
    }
    
    func put(_ key: Int, _ value: Int) {
        guard capacity > 0 else {
            return
        }
        if let node = dict[key] {
            node.val = value
            remove(node)
            node.fre += 1
            add(node)
        } else {
            if count == capacity {
                remove(tail.pre)
            } else {
                count += 1
            }
            let node = ListNode(value, key)
            add(node)
        }
    }

    func remove(_ node: ListNode?) {
        node?.pre?.next = node?.next
        node?.next?.pre = node?.pre
        node?.next = nil
        if let node = node {
            dict[node.key] = nil
            if freDict[node.fre] === node {
                freDict[node.fre] = nil
            }
        }
    }

    func add(_ node: ListNode?) {
        guard node != nil else {
            return
        }
        if let freNode = freDict[node!.fre] {
            if freNode !== node {
                freNode.pre?.next = node
                node?.pre = freNode.pre
                node?.next = freNode
                freNode.pre = node
            }
        } else {
            var temp = head.next
            while temp!.fre > node!.fre && temp !== tail {
                temp = temp?.next
            }
            let pre = temp?.pre
            pre?.next = node
            node?.pre = pre
            node?.next = temp
            temp?.pre = node
        }
        freDict[node!.fre] = node
        dict[node!.key] = node
    }
   
}


let arr1 = ["put","put","put","put","put","get","put","get","get","put","get","put","put","put","get","put","get","get","get","get","put","put","get","get","get","put","put","get","put","get","put","get","get","get","put","put","put","get","put","get","get","put","put","get","put","put","put","put","get","put","put","get","put","put","get","put","put","put","put","put","get","put","put","get","put","get","get","get","put","get","get","put","put","put","put","get","put","put","put","put","get","get","get","put","put","put","get","put","put","put","get","put","put","put","get","get","get","put","put","put","put","get","put","put","put","put","put","put","put"]

let arr2 = [[10,13],[3,17],[6,11],[10,5],[9,10],[13],[2,19],[2],[3],[5,25],[8],[9,22],[5,5],[1,30],[11],[9,12],[7],[5],[8],[9],[4,30],[9,3],[9],[10],[10],[6,14],[3,1],[3],[10,11],[8],[2,14],[1],[5],[4],[11,4],[12,24],[5,18],[13],[7,23],[8],[12],[3,27],[2,12],[5],[2,9],[13,4],[8,18],[1,7],[6],[9,29],[8,21],[5],[6,30],[1,12],[10],[4,15],[7,22],[11,26],[8,17],[9,29],[5],[3,4],[11,30],[12],[4,29],[3],[9],[6],[3,4],[1],[10],[3,29],[10,28],[1,20],[11,13],[3],[3,12],[3,8],[10,9],[3,26],[8],[7],[5],[13,17],[2,27],[11,15],[12],[9,19],[2,15],[3,16],[1],[12,17],[9,1],[6,19],[4],[5],[5],[8,1],[11,7],[5,2],[9,28],[1],[2,2],[7,4],[4,22],[7,24],[9,26],[13,28],[11,26]]

let obj = LFUCache(10)

for i in 0..<arr1.count {
    let b = obj
    if arr1[i] == "put" {
        obj.put(arr2[i][0], arr2[i][1])
    } else {
        let b = obj
        let a = obj.get(arr2[i][0])
        print(a)
    }
}
