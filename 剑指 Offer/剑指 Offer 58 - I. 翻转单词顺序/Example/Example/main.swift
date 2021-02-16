//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func reverseWords(_ s: String) -> String {
    let _s = s.trimmingCharacters(in: CharacterSet.whitespaces)
    let _sArr = _s.compactMap(\.asciiValue)
    var left = _s.count - 1
    var right = _s.count - 1
    var res = ""
    let white = Character(" ").asciiValue
    while left >= 0 {
        while left >= 0 && _sArr[left] != white {
            left -= 1
        }
        res.append(contentsOf: _s[_s.index(_s.startIndex, offsetBy: left+1)..._s.index(_s.startIndex, offsetBy: right)] + " ")
        while left >= 0 && _sArr[left] == white {
            left -= 1
        }
        right = left
    }
    return res.trimmingCharacters(in: CharacterSet.whitespaces)
}

print(reverseWords("reverse World"))
