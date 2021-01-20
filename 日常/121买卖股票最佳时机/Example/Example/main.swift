//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    func maxProfit(_ prices: [Int]) -> Int {
        ///  最小值 初始化为Int.max
        var min = Int.max
        /// 最大利润 默认0
        var max = 0
    
        for value in prices {
            /// 遍历 价钱
            if min > value{
                /// 找到 最小值，作为买入
                min = value
            } else if (value - min) > max {
                /// 当前值 减去 最小买入，大于最大利润
                max = value - min
            }
        }
    
        return max
    }
}

print(maxProfit([7,1,5,3,6,4]))
