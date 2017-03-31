//
//  main.swift
//  412. Fizz Buzz
//
//  Created by Hongzhi Zhao on 2017/3/31.
//  Copyright © 2017年 GuaHao. All rights reserved.
//

import Foundation

print("Hello, World!")

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        if n == 0 {
            return []
        }
        var resultArray = Array<String>.init()
        for i in 1...n {
            if i%3 == 0 && i%5 == 0 {
                resultArray.append("FizzBuzz")
            }else if i%3 == 0 {
                resultArray.append("Fizz")
            }else if i%5 == 0 {
                resultArray.append("Buzz")
            }else {
                resultArray.append("\(i)")
            }
        }
        return resultArray
    }
}

let a = Solution.init().fizzBuzz(0)
NSLog("\(a)")


