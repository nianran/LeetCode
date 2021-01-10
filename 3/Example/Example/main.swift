//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

extension String {
    //subscript函数可以检索数组中的值
    //按照索引方式读取字符
    subscript (_ i: Int) -> Character {
        //读取字符
        get {return self[index(startIndex, offsetBy: i)]}
    }
}

func lengthOfLongestSubstring(_ s: String) -> Int {
    let unicode = s.unicodeScalars.map { Int($0.value) }
    var window = [Int: Int]()
    var left = 0
    var right = 0
    var res = 0
    while right < unicode.count {
        let c = unicode[right]
        window[c] = (window[c] ?? 0) + 1
        right += 1
        while (window[c] ?? 0) > 1 {
            let d = unicode[left]
            left += 1
            window[d] = (window[d] != nil) ? window[d]! - 1 : 0
        }
        res = max(res, right - left)
    }
    return res
}


print(lengthOfLongestSubstring("pwwkew"))
