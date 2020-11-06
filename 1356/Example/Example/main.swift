//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

print("Hello, World!")

func sortByBits(_ arr: [Int]) -> [Int] {
    var ret = arr;
    ret.sort { (x, y) -> Bool in
        if x.nonzeroBitCount != y.nonzeroBitCount {
            return x.nonzeroBitCount < y.nonzeroBitCount
        }
        return x < y
    }
    return ret;
}
