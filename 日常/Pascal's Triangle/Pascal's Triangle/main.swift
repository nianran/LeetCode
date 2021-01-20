//
//  main.swift
//  Pascal's Triangle
//
//  Created by Hongzhi Zhao on 2017/3/27.
//  Copyright © 2017年 GuaHao. All rights reserved.
//

import Foundation

print("Hello, World!")


class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        
        if numRows == 0 {
            return []
        }
        
        var resultArray: Array<Array<Int>> = Array.init()
        for row in 0...numRows {
            var indexArray: Array<Int> = Array.init()
            indexArray.append(1)
            if row == 0 || row == 1 {
                continue
            }
            for index in 1...(row - 1) {
                let vali = resultArray[index - 1]
                let valk = vali[index - 1]
                let valm = vali[index]
                indexArray.append((valk + valm))
            }
            indexArray.append(1)
            resultArray.append(indexArray)
        }
        return resultArray
    }
}

Solution.init().generate(20)



