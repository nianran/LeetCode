//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func printNumbers(_ n: Int) -> [Int] {
    
    let sum = Int(NSDecimalNumber(decimal: pow(10,n)))
    var arr = [Int]()
    for i in 1...sum-1 {
        arr.append(i)
    }
    return arr
}

print(printNumbers(2))
