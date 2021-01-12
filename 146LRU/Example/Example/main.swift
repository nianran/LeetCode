//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

class DLinkedNode: NSObject {
    var key:Int
    var val:Int
    var prior: DLinkedNode?
    var next: DLinkedNode?
    init(_ key: Int, value: Int) {
        self.key = key
        val = value
    }
    // 辅助调试 debug, 打印出信息的，方便看
    override var description: String{
        var result = String(val)
        var point = prior
        while let bee = point{
            result = "\(bee.val) -> " + result
            point = bee.prior
        }
        point = next
        while let bee = point{
            result = result + "-> \(bee.val)"
            point = bee.next
        }
        return result
    }
}


class LRUCache {
    
    var nodeHeader = DLinkedNode.init(0, value: 0)
    var nodeTail = DLinkedNode.init(0, value: 0)
    
    var count = 0
    var capacity: Int
    var container = [Int: DLinkedNode]()
    
    init(_ capacity: Int) {
        self.capacity = capacity
        nodeHeader.next = nodeTail
        nodeTail.prior = nodeHeader
    }
    
    func get(_ key: Int) -> Int {
        if let node = container[key] {
            deleteNode(node)
            insertHead(node)
            return node.val
        } else {
            return -1
        }
    }
    
    func put(_ key: Int, _ value: Int) {
        if let node = container[key] {
            // 找到了节点
            node.val = value
            deleteNode(node)
            insertHead(node)
        } else {
            // 没有找到节点
            if count >= capacity {
                count -= 1
                deleteTail()
            }
            count += 1
            let node = DLinkedNode(key, value: value)
            container[key] = node
            insertHead(node)
        }
    }
    
    func insertHead(_ node: DLinkedNode){
        let next = nodeHeader.next
        next?.prior = node
        node.next = next
        nodeHeader.next = node
        node.prior = nodeHeader
    }
    func deleteNode(_ node: DLinkedNode){
        node.prior?.next = node.next
        node.next?.prior = node.prior
        node.prior = nil
        node.next = nil
    }
    func deleteTail(){
        if let toDel = nodeTail.prior {
            toDel.prior?.next = nodeTail
            nodeTail.prior = toDel.prior
            container.removeValue(forKey: toDel.key)
        }
    }
}

let obj = LRUCache(1)
let arr = ["put","get","put","get","get"]
let arr1 = [[2,1],[2],[3,2],[2],[3]]

for num in 0..<arr.count {
    if arr[num] == "put" {
        obj.put(arr1[num][0], arr1[num][1])
    } else {
        print(obj.get(arr1[num][0]))
    }
}

