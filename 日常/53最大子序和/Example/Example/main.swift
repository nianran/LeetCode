//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation



func maxSubArray(_ nums: [Int]) -> Int {
  var dp = [Int](repeating: 0, count: nums.count)
  dp[0] = nums[0]
  var maxSum = dp[0]
  for i in 1..<nums.count {
    dp[i] = max(dp[i-1]+nums[i],nums[i])
    maxSum = max(dp[i], maxSum)
  }
  return maxSum
}


print(maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))
print(maxSubArray([-1]))
