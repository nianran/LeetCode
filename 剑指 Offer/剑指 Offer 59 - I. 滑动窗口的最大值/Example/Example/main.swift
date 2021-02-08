//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        var queue = [Int]()
        var result = [Int]()
        let length = nums.count
        for i in 0..<length {
            while (queue.count > 0 && nums[i] > nums[queue.last!]) {
                queue.removeLast()
            }
            queue.append(i)

            let w = i - k + 1
            if w >= 0 {
                if w > queue.first! {
                    queue.removeFirst()
                }
                result.append(nums[queue.first!])
            }
        }
        return result
    }
}

print(maxSlidingWindow([1,3,-1,-3,5,3,6,7],3))
