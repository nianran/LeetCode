//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation


func coinChange(_ coins: [Int], _ amount: Int) -> Int {
    var dp = [Int](repeating: 0, count: amount + 1)
    
    if amount == 0 {
        return 0
    }
    
    for i in 1...amount {
        var cases:[Int] = []
        for coin in coins {
            if (i-coin) >= 0 && dp[i-coin] != -1 {
                cases.append(dp[i-coin] + 1)
            }
        }
        
        dp[i] = cases.isEmpty ? -1 : cases.min()!
    }
    return dp[amount]
}


print(coinChange([1,2,5], 11))
