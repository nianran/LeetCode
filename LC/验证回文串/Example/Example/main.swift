//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation
func isPalindrome(_ s: String) -> Bool {
    if s.count == 0  {
        return true
    }
    let _s = Array(s.lowercased().utf8)
    var i = 0
    var j = _s.count - 1
    while i != j {
        if _s[i] < 48 || (_s[i] > 57 && _s[i] < 97) || _s[i] > 122  {
            i += 1
            continue
        }
        if _s[j] < 48 || (_s[j] > 57 && _s[j] < 97) || _s[j] > 122  {
            j -= 1
            continue
        }
        if _s[i] == _s[j] {
            if i == j || i == j - 1 {
                break
            }
            i += 1
            j -= 1
        } else {
            return false
        }
    }
    return true
}

print(isPalindrome(""))
