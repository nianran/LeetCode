//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func minSteps(_ n: Int) -> Int {
    var n = n
    var divide = 2
    var result = 0
    while n > 1 {
        while n % divide == 0 {
            result += divide
            n = n / divide
        }
        divide += 1
    }
    return result
}

print(minSteps(7))
