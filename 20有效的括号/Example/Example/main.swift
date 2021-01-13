//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func isValid(_ s: String) -> Bool {
    var stack = [String]()
    var res = true
    let dic = ["[":"]","(":")","{":"}"]
    let dic1 = ["]":"[",")":"(","}":"{"]
    for c in s {
        if dic["\(c)"] != nil {
            stack.append("\(c)")
        } else {
            let comp = dic1["\(c)"]
            if stack.last == comp {
                stack.removeLast()
            } else {
                res = false
                break
            }
        }
    }
    if stack.count != 0 {
        res = false
    }
    return res
}


print(isValid("(){}[]"))
print(isValid("](){}[]"))
print(isValid("({[]})"))
