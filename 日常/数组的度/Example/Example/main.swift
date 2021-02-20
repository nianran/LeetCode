//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func findShortestSubArray(_ nums: [Int]) -> Int {
    if nums.count <= 1 {
        return nums.count
    }
    var dic = [Int: [Int]]()
    for i in 0..<nums.count {
        let num = nums[i]
        var arr = dic[num] ?? [0,-1,-1]
        arr[0] = arr[0] + 1
        if arr[1] == -1 {
            arr[1] = i
        } else {
            arr[2] = i
        }
        dic[num] = arr
    }
    var minLen = 50001
    var maxCount = 0
    
    for (_, arr) in dic {
        if maxCount < arr[0] {
            maxCount = arr[0]
            minLen = max(arr[2] - arr[1] + 1,1)
        } else if (maxCount == arr[0]) {
            minLen = max(min(minLen, arr[2] - arr[1] + 1),1)
        }
    }
    return minLen
}

print(findShortestSubArray([2,1]))
