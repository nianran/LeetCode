//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func firstUniqChar(_ s: String) -> Character {
    var dic = [Character: Int]()
    for char in s {
        if let count = dic[char] {
            dic[char] = count + 1
        } else {
            dic[char] = 1
        }
    }
    for char in s {
        if dic[char] == 1 {
            return char
        }
    }
    return Character(" ")
}

print(firstUniqChar(""))
print(firstUniqChar("asdad"))
print(firstUniqChar("sdasdxc"))
