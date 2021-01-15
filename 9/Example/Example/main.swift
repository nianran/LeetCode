//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation


func isPalindrome(_ x: Int) -> Bool {
    if x < 0 {
        return false
    }
    if x == reverse(x) {
        return true
    } else {
        return false
    }
}


func reverse(_ x: Int) -> Int {
    var y = x
    var res = 0
    while y != 0 {
        res = res * 10 + y%10
        y = y/10
    }
    if res > Int32.max || res < Int32.min {
        return 0
    }
    return res
}
