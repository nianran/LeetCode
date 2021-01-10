//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    if s.count == 0 {
        return 0
    }
    let sArray: [Character] = Array(s)
    var low = 0
    var res = 0
    for high in 0..<sArray.count {
        if low < high && sArray[low..<high].contains(sArray[high]) {
            while low < high && sArray[low..<high].contains(sArray[high]) {
                low += 1
            }
        } else {
            res = max(res, high - low + 1)
        }
    }
    return res
}

print(lengthOfLongestSubstring("pwwkew"))
